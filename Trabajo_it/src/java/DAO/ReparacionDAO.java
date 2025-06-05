package DAO;

import java.util.List;
import modelo.HibernateUtil;
import modelo.Reparacion;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ReparacionDAO {

    Session session = null;

    public List<Reparacion> obtenerTodos() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Reparacion ");
        List listaReparaciones = (List<Reparacion>) q.list();
        tx.commit();
        return listaReparaciones;
    }

    public Reparacion obtenerPorId(int id) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Reparacion reparacion = (Reparacion) session.get(Reparacion.class, id);
        tx.commit();
        return reparacion;
    }

    public void crearReparacion(Reparacion r) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(r);
        tx.commit();
    }

}
