/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.CitaDAO;
import DAO.FacturaDAO;
import DAO.ReparacionDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import java.util.Date;
import modelo.Cita;
import modelo.Factura;
import modelo.Reparacion;

/**
 *
 * @author Carlos
 */
public class NuevaReparacionAction {
    private String citaSeleccionada;
    private String tipo;
     private double precio;
     private String comentario;
     
    public NuevaReparacionAction() {
    }
    
    public String execute() throws Exception {
        ReparacionDAO rDAO = new ReparacionDAO();
        CitaDAO cDAO = new CitaDAO();
        int idCita = Integer.parseInt(citaSeleccionada);
        Cita c = cDAO.obtenerCitasPorId(idCita);
        
        Reparacion r = new Reparacion(c,tipo,precio,comentario);
        rDAO.crearReparacion(r);
        Date fechaFactura = new Date();
        Factura f = new Factura(r,precio,fechaFactura);
        FacturaDAO fDAO = new FacturaDAO();
        fDAO.registrarFactura(f);
        
        return SUCCESS;
    }

    public String getCitaSeleccionada() {
        return citaSeleccionada;
    }

    public void setCitaSeleccionada(String citaSeleccionada) {
        this.citaSeleccionada = citaSeleccionada;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }
    
}
