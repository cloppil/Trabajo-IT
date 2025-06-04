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

public class VehiculoDAO {

    Session session = null;

    public void altaVehiculo(Vehiculo vehiculo) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(vehiculo);
        tx.commit();
    }

    public void bajaVehiculo(String matricula) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        Vehiculo vehiculo = (Vehiculo) session.get(Vehiculo.class, matricula);
        if (vehiculo != null) {
            session.delete(vehiculo);
        }

        tx.commit();
    }
    
    public List<Vehiculo> obtenerVehiculosPorCliente(String dniCliente) {
        List<Vehiculo> vehiculos = null;
        Transaction tx = null;
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        tx = session.beginTransaction();

        Query query = session.createQuery("FROM Vehiculo v WHERE v.cliente.dniCliente ='"+dniCliente+"'");

        vehiculos = query.list();

        tx.commit();
        return vehiculos;
    }

}
