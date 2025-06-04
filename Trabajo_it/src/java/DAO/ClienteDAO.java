/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import modelo.Cita;
import modelo.Cliente;
import modelo.Factura;
import modelo.HibernateUtil;
import modelo.Historial;
import modelo.Mecanico;
import modelo.Piezas;
import modelo.Reparacion;
import modelo.Vehiculo;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author ferna
 */
public class ClienteDAO {

    Session session = null;

    public Cliente loginCliente(String dni, String password) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Cliente where dniCliente='" + dni + "' and contrasenia='" + password + "'");
        Cliente cli = (Cliente) q.uniqueResult();
        tx.commit();
        return cli;
    }

    public void altaCliente(Cliente cli) {

        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(cli);
        tx.commit();
    }

    public void bajaPropietario(Cliente cliente) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = null;

        try {
            tx = session.beginTransaction();

            if (cliente != null) {
                Query vehiculosQuery = session.createQuery("FROM Vehiculo WHERE cliente = :cliente");
                vehiculosQuery.setParameter("cliente", cliente);
                List<Vehiculo> vehiculos = vehiculosQuery.list();

                for (Vehiculo vehiculo : vehiculos) {
                    for (Object citaObj : vehiculo.getCitas()) {
                        Cita cita = (Cita) citaObj;

                        // 1. Obtener reparaciones asociadas a la cita
                        Query reparacionesQuery = session.createQuery("FROM Reparacion WHERE cita = :cita");
                        reparacionesQuery.setParameter("cita", cita);
                        List<Reparacion> reparaciones = reparacionesQuery.list();

                        for (Reparacion reparacion : reparaciones) {
                            // 1.1 Eliminar piezas asociadas a la reparación
                            Query piezasQuery = session.createQuery("FROM Piezas WHERE reparacion = :reparacion");
                            piezasQuery.setParameter("reparacion", reparacion);
                            List<Piezas> piezas = piezasQuery.list();
                            for (Piezas pieza : piezas) {
                                session.delete(pieza);
                            }

                            // 1.2 Eliminar la reparación
                            session.delete(reparacion);
                        }

                        // 2. Eliminar facturas asociadas
                        Query facturasQuery = session.createQuery("FROM Factura WHERE cita = :cita");
                        facturasQuery.setParameter("cita", cita);
                        List<Factura> facturas = facturasQuery.list();
                        for (Factura factura : facturas) {
                            session.delete(factura);
                        }

                        // 3. Eliminar la cita
                        session.delete(cita);
                    }

                    // 4. Eliminar historial
                    for (Object h : vehiculo.getHistorials()) {
                        Historial historial = (Historial) h;
                        session.delete(historial);
                    }

                    // 5. Eliminar el vehículo
                    session.delete(vehiculo);
                }

                // 6. Eliminar el cliente
                session.delete(cliente);
            }

            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
            throw e;
        } finally {
            session.close();
        }
    }

    public void actualizarCliente(Cliente cliente) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.merge(cliente);
        tx.commit();
    }

}
