/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.ArrayList;
import java.util.List;
import modelo.Cita;
import modelo.Cliente;
import modelo.Factura;
import modelo.HibernateUtil;
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
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.delete(cliente);
        tx.commit();
    }

    public void actualizarCliente(Cliente cliente) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.merge(cliente);
        tx.commit();
    }

    public Cliente consultarCliente(String dni) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("FROM Cliente WHERE dniCliente = :dni");
        q.setParameter("dni", dni);
        Cliente cli = (Cliente) q.uniqueResult();
        tx.commit();
        return cli;
    }

    public List<Factura> listarFacturas(String dni) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        // Paso 1: Obtener todos los vehículos del cliente
        Query vehiculoQuery = session.createQuery("FROM Vehiculo WHERE dniCliente ='" + dni + "'");
        List<Vehiculo> vehiculos = vehiculoQuery.list();

        List<Factura> todasLasFacturas = new ArrayList<>();

        for (Vehiculo vehiculo : vehiculos) {
            // Paso 2: Obtener todas las citas para el vehículo
            String matricula = vehiculo.getMatricula();
            Query citaQuery = session.createQuery("FROM Cita WHERE idVehiculo ='" + matricula + "'");
            List<Cita> citas = citaQuery.list();

            for (Cita cita : citas) {
                // Paso 3: Obtener todas las reparaciones asociadas a la cita
                int idCita = cita.getIdCita();
                Query reparacionQuery = session.createQuery("FROM Reparacion WHERE idCita ='" + idCita + "'");
                List<Reparacion> reparaciones = reparacionQuery.list();

                for (Reparacion reparacion : reparaciones) {
                    // Paso 4: Obtener todas las facturas asociadas a la reparación
                    int idRep = reparacion.getIdReparacion();
                    Query facturaQuery = session.createQuery("FROM Factura WHERE idReparacion ='" + idRep + "'");
                    List<Factura> facturas = facturaQuery.list();
                    todasLasFacturas.addAll(facturas);
                }
            }
        }
        tx.commit();
        return todasLasFacturas;
    }

    public List<Piezas> listarPiezas(List<Factura> listaFacturas) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        List<Piezas> piezasTotales = new ArrayList<>();

        for (Factura factura : listaFacturas) {
            int idReparacion = factura.getReparacion().getIdReparacion();  // Suponiendo que tienes este getter

            Query piezasQuery = session.createQuery("FROM Piezas WHERE idReparacion ='"+idReparacion+"'");
            List<Piezas> piezas = piezasQuery.list();

            piezasTotales.addAll(piezas);
        }

        tx.commit();
        return piezasTotales;
    }

}
