/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import modelo.HibernateUtil;
import modelo.Mecanico;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author ferna
 */
public class MecanicoDAO {

    Session session = null;

    public Mecanico loginMecanico(String dni, String password) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Mecanico where dniMecanico='" + dni + "' and contrasenia='" + password + "'");
        Mecanico mec = (Mecanico) q.uniqueResult();
        tx.commit();
        return mec;
    }


    public void bajaPropietario(Mecanico m) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.delete(m);
        tx.commit();
    }
    

    public void altaMecanico(Mecanico mec) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(mec);
        tx.commit();
    }

}
