/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.ClienteDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.util.Map;
import modelo.Cliente;

/**
 *
 * @author Carlos
 */
public class BajaClienteAction {
    
    public BajaClienteAction() {
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        Cliente c = (Cliente) session.get("cliente");
        ClienteDAO cliDAO = new ClienteDAO();
        cliDAO.bajaPropietario(c);
        session.clear();
        return SUCCESS;
    }
    
}
