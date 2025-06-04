/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.CitaDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import java.util.Date;
import modelo.Cita;

/**
 *
 * @author Carlos
 */
public class CancelarCitaAction {
    private String matricula;
    private Date fecha;
    public CancelarCitaAction() {
    }
    
    public String execute() throws Exception {
        CitaDAO cDao = new CitaDAO();
        Cita c = cDao.obtenerCita(matricula,fecha);
        cDao.eliminarCita(c);
        return SUCCESS;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    
}
