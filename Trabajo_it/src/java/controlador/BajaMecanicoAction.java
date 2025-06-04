/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.MecanicoDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.util.Map;
import modelo.Mecanico;

/**
 *
 * @author Carlos
 */
public class BajaMecanicoAction {
    
    public BajaMecanicoAction() {
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        Mecanico m = (Mecanico) session.get("mecanico");
        MecanicoDAO mecDAO = new MecanicoDAO();
        mecDAO.bajaPropietario(m);
        session.clear();
        return SUCCESS;
    }
    
}
