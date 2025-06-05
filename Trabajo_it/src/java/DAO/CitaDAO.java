/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.Date;
import java.util.List;
import modelo.Cita;
import modelo.HibernateUtil;
import modelo.Mecanico;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Carlos
 */
public class CitaDAO {

    Session session = null;

    public CitaDAO() {
    }

    public void registrarCita(Cita c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(c);
        tx.commit();
    }

    public List<Cita> obtenerCitasPorDNI(String dni) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Cita c where c.vehiculo.cliente.dniCliente = '" + dni + "'");
        List listaCitas = (List<Cita>) q.list();
        tx.commit();
        return listaCitas;
    }

    public Cita obtenerCita(String matricula, Date fecha) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        Query query = session.createQuery("FROM Cita c WHERE c.fecha = :fecha AND c.vehiculo.matricula = :matricula");
        query.setParameter("fecha", fecha);
        query.setParameter("matricula", matricula);

        Cita c = (Cita) query.uniqueResult();
        tx.commit();
        return c;
    }

    

    public void eliminarCita(Cita c) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.delete(c);
        tx.commit();
    }

    public List<Cita> obtenerCitasMecanico(String dniMecanico) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Cita c where c.mecanico.dniMecanico = '" + dniMecanico + "'");
        List listaCitas = (List<Cita>) q.list();
        tx.commit();
        return listaCitas;
    }

    public Cita obtenerCitasPorId(int idCita) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        Query query = session.createQuery("FROM Cita c WHERE c.idCita="+idCita);
        Cita c = (Cita) query.uniqueResult();
        tx.commit();
        return c;
    }
}
