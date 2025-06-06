/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import modelo.HibernateUtil;
import modelo.Mecanico;
import modelo.Proveedor;
import modelo.Vehiculo;
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

    public List<Mecanico> obtenerMecanicos() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Mecanico ");
        List listaMecanicos = (List<Mecanico>) q.list();
        tx.commit();
        return listaMecanicos;
    }

    public Mecanico obtenerMecanicoPorDNI(String mecanicoSeleccionado) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Mecanico where dniMecanico = '" + mecanicoSeleccionado + "'");
        Mecanico m = (Mecanico) q.uniqueResult();
        tx.commit();
        return m;
    }

    public void altaMecanico(Mecanico mec) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(mec);
        tx.commit();
    }

    public void actualizarMecanico(Mecanico m) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.merge(m);
        tx.commit();
    }
    public void altaProveedor(Proveedor p) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(p);
        tx.commit();
    }

    public List listarProveedores() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();
        Query q = session.createQuery("from Proveedor");
        List resultados = (List<Proveedor>) q.list();
        tx.commit();

        return resultados;
    }

    public Proveedor encontrarProveedor(int idProveedor) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        org.hibernate.Transaction tx = session.beginTransaction();

        Query q = session.createQuery("from Proveedor where idProveedor =" + idProveedor);

        Proveedor p = (Proveedor) q.uniqueResult();

        tx.commit();

        return p;
    }

    public void eliminarProveedor(Proveedor p) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.delete(p);
        tx.commit();
    }

}
