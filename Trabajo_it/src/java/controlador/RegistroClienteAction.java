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
import servicios.CorreoCliente;

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
        CorreoCliente correoCliente = new CorreoCliente();
        String correo = correoCliente.getTextPlain(nombre, dni);
        Cliente cli = new Cliente(dni, nombre, correo, password, telefono);
        cliDAO.altaCliente(cli);
        return SUCCESS;
    }

    public void validate() {
        if (password == null || password.trim().isEmpty()) {
            addFieldError("password", "La contraseña no puede estar vacía.");
        } else if (password.length() < 6) {
            addFieldError("password", "La contraseña debe tener al menos 6 caracteres.");
        } else if (!password.matches(".*[A-Z].*")) {
            addFieldError("password", "La contraseña debe contener al menos una letra mayúscula.");
        } else if (!password.matches(".*[a-z].*")) {
            addFieldError("password", "La contraseña debe contener al menos una letra minúscula.");
        }
        if (dni == null || dni.trim().isEmpty()) {
            addFieldError("dni", "El DNI no puede estar vacío.");
        } else if (!dni.matches("^\\d{8}[A-Za-z]$")) {
            addFieldError("dni", "El DNI debe contener exactamente 8 números seguidos de una letra.");
        }

        String telefonoStr = String.valueOf(telefono);

        if (telefonoStr.length() != 9) {
            addFieldError("telefono", "El teléfono debe tener exactamente 9 dígitos.");
        }
    }

    public String elegirRegistro() {
        if (rolUsuario.equals("mecanico")) {
            return "altaMecanico";
        } else if (rolUsuario.equals("cliente")) {
            return "altaCliente";
        } else {
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
