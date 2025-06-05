/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;
import modelo.Factura;
import modelo.HibernateUtil;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author luisc
 */
public class FacturaDAO {
    Session session = null;
    public List<Factura> obtenerFacturasPorIdMecanico(String idMecanico) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        List<Factura> listaFacturas = session.createQuery(
                "FROM Factura f WHERE f.reparacion.cita.mecanico.dniMecanico = :idMecanico"
        )
                .setParameter("idMecanico", idMecanico)
                .list();

        tx.commit();
        return listaFacturas;
    }

    public Factura obtenerFacturaPorId(int idFactura) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        Factura factura = (Factura) session.createQuery(
                "FROM Factura f WHERE f.idFactura = :idFactura"
        )
                .setParameter("idFactura", idFactura)
                .uniqueResult();

        tx.commit();
        return factura;
    }

    public void actualizarFactura(Factura factura) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();

        session.update(factura);

        tx.commit();
    }

    public void registrarFactura(Factura f) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(f);
        tx.commit();
    }

}
