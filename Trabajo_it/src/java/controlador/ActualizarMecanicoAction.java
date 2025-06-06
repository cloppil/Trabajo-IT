/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.MecanicoDAO;
import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpSession;
import modelo.Mecanico;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Carlos
 */
public class ActualizarMecanicoAction extends ActionSupport{

    private String dniMecanico;
    private String nombre;
    private String contrasenia;
    private int salario;
    private String rama;

    private String mensaje;

    public String execute() {
        try {
            MecanicoDAO dao = new MecanicoDAO();

            Mecanico m = new Mecanico();
            m.setDniMecanico(dniMecanico);
            m.setContrasenia(contrasenia);
            m.setNombre(nombre);
            m.setRama(rama);
            m.setSalario(salario);

            dao.actualizarMecanico(m);

            // ACTUALIZAR EL CLIENTE EN SESIÓN
            HttpSession session = ServletActionContext.getRequest().getSession();
            session.setAttribute("mecanico", m);

            mensaje = "Mecanico actualizado correctamente";
            return SUCCESS;
        } catch (Exception e) {
            mensaje = "Error al actualizar mecanico: " + e.getMessage();
            return ERROR;
        }

    }

    @Override
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

        if (salario <= 0) {
            addFieldError("salario", "El salario debe ser mayor que cero.");
        }

    }

    public String getDniMecanico() {
        return dniMecanico;
    }

    public void setDniMecanico(String dniMecanico) {
        this.dniMecanico = dniMecanico;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getContrasenia() {
        return contrasenia;
    }

    public void setContrasenia(String contrasenia) {
        this.contrasenia = contrasenia;
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

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}
