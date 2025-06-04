/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.opensymphony.xwork2.ActionSupport;
import modelo.Cliente;

public class IrActualizarClienteAction extends ActionSupport {

    private String dniCliente;

    // Si quieres prellenar los campos:
    private String nombre;
    private String email;
    private String contrasenia;
    private int telefono;

    public String execute() {
        // Suponiendo que tienes el cliente en la sesión
        Cliente cliente = (Cliente) org.apache.struts2.ServletActionContext.getRequest().getSession().getAttribute("cliente");

        if (cliente != null) {
            dniCliente = cliente.getDniCliente();
            // Si quieres prellenar los campos:
            nombre = cliente.getNombre();
            email = cliente.getEmail();
            contrasenia = cliente.getContrasenia();
            telefono = cliente.getTelefono();
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    // Getters y setters
    public String getDniCliente() {
        return dniCliente;
    }

    public void setDniCliente(String dniCliente) {
        this.dniCliente = dniCliente;
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

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }
}
