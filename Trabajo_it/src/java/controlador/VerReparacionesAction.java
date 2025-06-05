/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.ReparacionDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.util.List;
import java.util.Map;
import modelo.Mecanico;
import modelo.Reparacion;

/**
 *
 * @author Carlos
 */
public class VerReparacionesAction {
    
    public VerReparacionesAction() {
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        Mecanico m = (Mecanico)session.get("mecanico");
        String dniMecanico = m.getDniMecanico();
        ReparacionDAO rDAO = new ReparacionDAO();
        List<Reparacion> listadoReparaciones = rDAO.listarReparacionesPorMecanico(dniMecanico);
        session.put("listadoReparaciones", listadoReparaciones);
        return SUCCESS;
    }
    
}
