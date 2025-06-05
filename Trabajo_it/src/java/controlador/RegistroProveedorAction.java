/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.MecanicoDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelo.Mecanico;
import modelo.Proveedor;

/**
 *
 * @author ferna
 */
public class RegistroProveedorAction extends ActionSupport {
    
    private String nombre;
    private String email;
    private String direccion;
    private int telefono;
    
    public RegistroProveedorAction() {
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        MecanicoDAO mecDAO = new MecanicoDAO(); 
        Proveedor p = new Proveedor (this.getNombre(), this.getEmail(), this.getDireccion(), this.getTelefono());
        mecDAO.altaProveedor(p);
        return SUCCESS;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }
    
}
