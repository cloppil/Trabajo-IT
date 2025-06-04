/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.ClienteDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelo.Cliente;

/**
 *
 * @author ferna
 */
public class RegistroClienteAction extends ActionSupport {
    
    private String nombre;
    private int telefono;
    private String dni;
    private String password;
    private String rolUsuario;
    
    public RegistroClienteAction() {
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        ClienteDAO cliDAO = new ClienteDAO(); 
        Cliente cli = new Cliente (dni, nombre, "", password,telefono);
        cliDAO.altaCliente(cli);
        return SUCCESS;
    }
    
    
    public String elegirRegistro(){
        if(rolUsuario.equals("mecanico")){
            return "altaMecanico";
        }else if(rolUsuario.equals("cliente")){
            return "altaCliente";
        }else{
            return ERROR;
        }
    }

    public String getRolUsuario() {
        return rolUsuario;
    }

    public void setRolUsuario(String rolUsuario) {
        this.rolUsuario = rolUsuario;
    }
    

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
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
