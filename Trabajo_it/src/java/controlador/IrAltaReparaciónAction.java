/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.CitaDAO;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.util.List;
import java.util.Map;
import modelo.Cita;
import modelo.Mecanico;


/**
 *
 * @author Carlos
 */
public class IrAltaReparaciónAction {
    
    public IrAltaReparaciónAction() {
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        Mecanico m = (Mecanico) session.get("mecanico");
        
        String dniMecanico = m.getDniMecanico();
        CitaDAO citaDAO = new CitaDAO();
        
        List<Cita> listaCitas = citaDAO.obtenerCitasMecanico(dniMecanico);
        
        session.put("listaCitas", listaCitas);
        
        return SUCCESS;
    }
    
}
