/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.ClienteDAO;
import DAO.MecanicoDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelo.Cliente;
import modelo.Mecanico;

/**
 *
 * @author ferna
 */
public class IniciarSesionAction extends ActionSupport {

    private String dni;
    private String password;

    public IniciarSesionAction() {
    }

    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();

        MecanicoDAO mecDAO = new MecanicoDAO();
        Mecanico mec = mecDAO.loginMecanico(dni, password);

        if (mec != null) {
            session.put("mecanico", mec);
            return "mecanico";
        } else {
            ClienteDAO cliDAO = new ClienteDAO();
            Cliente cli = cliDAO.loginCliente(dni, password);
            if (cli != null) {
                session.put("cliente", cli);
                return "cliente";
            } else {
                return ERROR;
            }

        }
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
