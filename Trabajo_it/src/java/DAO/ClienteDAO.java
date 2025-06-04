/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import modelo.Cliente;
import modelo.HibernateUtil;
import modelo.Mecanico;
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
        session=HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx=session.beginTransaction();
        Query q=session.createQuery("From Cliente where dniCliente='"+dni+"' and contrasenia='"+password+"'");
        Cliente cli = (Cliente)q.uniqueResult();
        tx.commit();
        return cli;
    }

    public void bajaPropietario(Cliente c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.delete(c);
        tx.commit();
    }
    
}
