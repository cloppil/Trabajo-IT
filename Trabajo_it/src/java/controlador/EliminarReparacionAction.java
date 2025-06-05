/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.ReparacionDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import modelo.Reparacion;

/**
 *
 * @author Carlos
 */
public class EliminarReparacionAction {
    private int idReparacion;
    
    public EliminarReparacionAction() {
    }
    
    public String execute() throws Exception {
        ReparacionDAO rDao = new ReparacionDAO();
        Reparacion r = rDao.obtenerPorId(idReparacion) ;
        rDao.eliminarReparacion(r);
        return SUCCESS;
    }

    public int getIdReparacion() {
        return idReparacion;
    }

    public void setIdReparacion(int idReparacion) {
        this.idReparacion = idReparacion;
    }
    
}
