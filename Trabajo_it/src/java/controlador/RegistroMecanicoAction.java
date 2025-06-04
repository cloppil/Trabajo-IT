/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.MecanicoDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelo.Mecanico;
import org.hibernate.Session;

/**
 *
 * @author ferna
 */
public class RegistroMecanicoAction extends ActionSupport {
    
    private String nombre;
    private String password;
    private String dni;
    private int salario;
    private String rama;
    
    public RegistroMecanicoAction() {
    }
    
    Session session = null;
    
    public String execute() throws Exception {
        
        Map<String, Object> session = ActionContext.getContext().getSession();
        MecanicoDAO mecDAO = new MecanicoDAO(); 
        Mecanico mec = new Mecanico (this.getDni(), this.getSalario(), this.getNombre(), this.getPassword(), this.getRama());
        mecDAO.altaMecanico(mec);
        return SUCCESS;
        
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public int getSalario() {
        return salario;
    }

    public void setSalario(int salario) {
        this.salario = salario;
    }

    public String getRama() {
        return rama;
    }

    public void setRama(String rama) {
        this.rama = rama;
    }
    
}
