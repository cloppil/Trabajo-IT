package controlador;

import com.opensymphony.xwork2.ActionSupport;

public class IrBajaVehiculoAction extends ActionSupport {

    private String matricula;  // Opcional, si quieres pre-cargar matrícula en el formulario

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getMatricula() {
        return matricula;
    }

    @Override
    public String execute() {
        // Aquí podrías añadir lógica para cargar datos si quieres, pero puede quedarse vacío
        return SUCCESS;  // Va a la página de bajaVehiculo.jsp, por ejemplo
    }
}
