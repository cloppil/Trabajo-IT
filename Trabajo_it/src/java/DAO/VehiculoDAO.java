/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import modelo.HibernateUtil;
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

    public Vehiculo obtnerVehiculoPorMatricula(String matricula) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Vehiculo where matricula = '" + matricula + "'");
        Vehiculo v = (Vehiculo) q.uniqueResult();
        tx.commit();
        return v;
    }

    public void actualizarVehiculo(Vehiculo vehiculo) {
        Transaction tx = null;

        session = HibernateUtil.getSessionFactory().getCurrentSession();
        tx = session.beginTransaction();

        session.update(vehiculo);

        tx.commit();
    }

}
