package DAO;

import java.util.List;
import modelo.HibernateUtil;
import modelo.Vehiculo;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class VehiculoDAO {

    public void altaVehiculo(Vehiculo vehiculo) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(vehiculo);
        tx.commit();
    }

    public void bajaVehiculo(String matricula) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        Vehiculo vehiculo = (Vehiculo) session.get(Vehiculo.class, matricula);
        if (vehiculo != null) {
            session.delete(vehiculo);
        }

        tx.commit();
    }

    
}
