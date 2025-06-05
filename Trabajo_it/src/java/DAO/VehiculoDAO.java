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

    public void bajaVehiculo(Vehiculo v) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.delete(v);
        tx.commit();
    }

    public List<Vehiculo> obtenerVehiculosPorCliente(String dniCliente) {
        List<Vehiculo> vehiculos = null;
        Transaction tx = null;
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        tx = session.beginTransaction();
        Query query = session.createQuery("FROM Vehiculo v WHERE v.cliente.dniCliente ='" + dniCliente + "'");
        vehiculos = query.list();
        tx.commit();
        return vehiculos;
    }

    public Vehiculo obtnerVehiculoPorMatricula(String matricula) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Vehiculo where matricula = '" + matricula + "'");
        Vehiculo v = (Vehiculo) q.uniqueResult();
        tx.commit();
        return v;
    }

    public List<Vehiculo> obtenerVehiculos() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Vehiculo ");
        List listaVehiculos = (List<Vehiculo>) q.list();
        tx.commit();
        return listaVehiculos;
    }


    public void actualizarVehiculo(Vehiculo vehiculo) {
        Transaction tx = null;

        session = HibernateUtil.getSessionFactory().getCurrentSession();
        tx = session.beginTransaction();

        session.update(vehiculo);

        tx.commit();
    }

    public List<Vehiculo> obtenerVehiculosCliente(String dni) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        // Paso 1: Obtener todos los vehículos del cliente
        Query vehiculoQuery = session.createQuery("FROM Vehiculo WHERE dniCliente ='" + dni + "'");
        List<Vehiculo> vehiculos = vehiculoQuery.list();
        tx.commit();
        return vehiculos;
    }
}
