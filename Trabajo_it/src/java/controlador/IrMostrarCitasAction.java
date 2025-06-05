/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.CitaDAO;
import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import modelo.Cita;
import modelo.Cliente;

/**
 *
 * @author Carlos
 */
public class IrMostrarCitasAction {
    
    public IrMostrarCitasAction() {
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        Cliente c = (Cliente)session.get("cliente");
        CitaDAO cDAO = new CitaDAO();
        List<Cita> listadoCitas = cDAO.obtenerCitasPorDNI(c.getDniCliente());
        listadoCitas = cDAO.obtenerCitasDisponibles(listadoCitas);
        if(listadoCitas == null){
            return ERROR;
        }
        session.put("listadoCitas", listadoCitas);
        return SUCCESS;
    }
}
