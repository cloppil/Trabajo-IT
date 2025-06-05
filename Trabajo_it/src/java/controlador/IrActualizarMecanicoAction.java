/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.util.Map;
import modelo.Cliente;
import modelo.Mecanico;

/**
 *
 * @author Carlos
 */
public class IrActualizarMecanicoAction {
    private String dniMecanico;

    // Si quieres prellenar los campos:
    private String nombre;
    private String contrasenia;
    private int salario;
    private String rama;
    
    public IrActualizarMecanicoAction() {
        
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        Mecanico m = (Mecanico) session.get("mecanico");

        if (m != null) {
            dniMecanico = m.getDniMecanico();
            nombre = m.getNombre();
            contrasenia = m.getContrasenia();
            salario = m.getSalario();
            rama = m.getRama();
            return SUCCESS;
        } else {
            return ERROR;
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
    
}
