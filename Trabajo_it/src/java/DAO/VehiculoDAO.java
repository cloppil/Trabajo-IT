/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import modelo.HibernateUtil;
import modelo.Vehiculo;
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


}