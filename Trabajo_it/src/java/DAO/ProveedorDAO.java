package DAO;

import java.util.List;
import modelo.HibernateUtil;
import modelo.Proveedor;
import modelo.Vehiculo;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ProveedorDAO {

    Session session = null;

    public List<Proveedor> obtenerTodos() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Proveedor ");
        List listaProveedores = (List<Proveedor>) q.list();
        tx.commit();
        return listaProveedores;
    }

    public Proveedor obtenerPorId(int id) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Proveedor proveedor = (Proveedor) session.get(Proveedor.class, id);
        tx.commit();
        return proveedor;
    }

}
