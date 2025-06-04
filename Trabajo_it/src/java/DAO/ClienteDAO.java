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

}
