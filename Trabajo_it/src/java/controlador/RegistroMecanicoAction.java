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

    @Override
    public String execute() throws Exception {

        Map<String, Object> session = ActionContext.getContext().getSession();
        MecanicoDAO mecDAO = new MecanicoDAO();
        Mecanico mec = new Mecanico(this.getDni(), this.getSalario(), this.getNombre(), this.getPassword(), this.getRama());
        mecDAO.altaMecanico(mec);
        return SUCCESS;

    }

    @Override
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

        if (salario <= 0) {
            addFieldError("salario", "El salario debe ser mayor que cero.");
        }

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
