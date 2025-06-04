/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.CitaDAO;
import DAO.MecanicoDAO;
import DAO.VehiculoDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import java.util.Date;
import modelo.Cita;
import modelo.Mecanico;
import modelo.Vehiculo;

/**
 *
 * @author Carlos
 */
public class SolicitarCitaAction {
    private Date fecha;
    private String vehiculoSeleccionado;
    private String mecanicoSeleccionado;
    
    public SolicitarCitaAction() {
    }
    
    public String execute() throws Exception {
        VehiculoDAO vDAO = new VehiculoDAO();
        MecanicoDAO mecDAO = new MecanicoDAO();
        CitaDAO cDAO = new CitaDAO();
        
        Vehiculo v = vDAO.obtnerVehiculoPorMatricula(vehiculoSeleccionado);
        Mecanico m = mecDAO.obtenerMecanicoPorDNI(mecanicoSeleccionado);
        
        Cita c = new Cita(m,v,fecha);
        cDAO.registrarCita(c);
        return SUCCESS;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getVehiculoSeleccionado() {
        return vehiculoSeleccionado;
    }

    public void setVehiculoSeleccionado(String vehiculoSeleccionado) {
        this.vehiculoSeleccionado = vehiculoSeleccionado;
    }

    public String getMecanicoSeleccionado() {
        return mecanicoSeleccionado;
    }

    public void setMecanicoSeleccionado(String mecanicoSeleccionado) {
        this.mecanicoSeleccionado = mecanicoSeleccionado;
    }
    
}
