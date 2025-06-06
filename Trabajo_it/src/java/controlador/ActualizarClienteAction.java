/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.HttpSession;
import DAO.ClienteDAO;
import modelo.Cliente;

public class ActualizarClienteAction extends ActionSupport {

    private String dniCliente;
    private String nombre;
    private String email;
    private String contrasenia;
    private int telefono;

    private String mensaje;

    public String execute() {
        try {
            ClienteDAO dao = new ClienteDAO();

            Cliente cliente = new Cliente();
            cliente.setDniCliente(dniCliente);
            cliente.setNombre(nombre);
            cliente.setEmail(email);
            cliente.setContrasenia(contrasenia);
            cliente.setTelefono(telefono);

            dao.actualizarCliente(cliente);

            // ACTUALIZAR EL CLIENTE EN SESIÓN
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("cliente", cliente);

            mensaje = "Cliente actualizado correctamente";
            return SUCCESS;
        } catch (Exception e) {
            mensaje = "Error al actualizar cliente: " + e.getMessage();
            return ERROR;
        }
    }
    public void validate() {
        if (contrasenia == null || contrasenia.trim().isEmpty()) {
            addFieldError("password", "La contraseña no puede estar vacía.");
        } else if (contrasenia.length() < 6) {
            addFieldError("password", "La contraseña debe tener al menos 6 caracteres.");
        } else if (!contrasenia.matches(".*[A-Z].*")) {
            addFieldError("password", "La contraseña debe contener al menos una letra mayúscula.");
        } else if (!contrasenia.matches(".*[a-z].*")) {
            addFieldError("password", "La contraseña debe contener al menos una letra minúscula.");
        }

        String telefonoStr = String.valueOf(telefono);

        if (telefonoStr.length() != 9) {
            addFieldError("telefono", "El teléfono debe tener exactamente 9 dígitos.");
        }
    }
    // Getters y setters (muy importante para que Struts2 funcione)
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

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}
