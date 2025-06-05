/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import java.util.List;

import modelo.Cita;
import modelo.Cliente;
import modelo.Factura;

import modelo.HibernateUtil;
import modelo.Mecanico;
import modelo.Piezas;
import modelo.Reparacion;
import modelo.Vehiculo;
import modelo.Proveedor;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class PiezaDAO {
    
    Session session = null;

    public void solicitarPieza(Piezas pieza) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.save(pieza);
        tx.commit();
    }
    
    public void devolverPieza(Piezas pieza) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.delete(pieza);
        tx.commit();
    }
    
    public Piezas obtenerPorId(int id) {
        Session session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Piezas pieza = (Piezas) session.get(Piezas.class, id);
        tx.commit();
        return pieza;
    }
    
    // Actualizar una pieza existente
    public void actualizarPieza(Piezas pieza) {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        session.update(pieza);
        tx.commit();
    }
    
    public List<Piezas> obtenerTodos() {
        session = HibernateUtil.getSessionFactory().getCurrentSession();
        Transaction tx = session.beginTransaction();
        Query q = session.createQuery("From Piezas ");
        List listaPiezas = (List<Piezas>) q.list();
        tx.commit();
        return listaPiezas;
    }
}
