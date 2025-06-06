package controlador;

import DAO.VehiculoDAO;
import com.opensymphony.xwork2.ActionSupport;
import modelo.Cliente;
import modelo.Vehiculo;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class AltaVehiculoAction extends ActionSupport implements SessionAware {

    private String matricula;
    private String marca;
    private Map<String, Object> session;

    private String mensaje;

    public String execute() {
        try {
            Cliente cliente = (Cliente) session.get("cliente");

            if (cliente == null) {
                mensaje = "Error: no hay un cliente en sesión.";
                return ERROR;
            }

            Vehiculo vehiculo = new Vehiculo();
            vehiculo.setMatricula(matricula);
            vehiculo.setMarca(marca);
            vehiculo.setCliente(cliente);

            VehiculoDAO dao = new VehiculoDAO();
            dao.altaVehiculo(vehiculo);

            mensaje = "Vehículo añadido correctamente.";
            return SUCCESS;

        } catch (Exception e) {
            e.printStackTrace();
            mensaje = "Ha ocurrido un error al añadir el vehículo.";
            return ERROR;
        }
    }

    @Override
    public void validate() {
        if (matricula == null || matricula.trim().isEmpty()) {
            addFieldError("matricula", "Debe introducir la matrícula.");
        } else if (!matricula.matches("^\\d{4}[A-Z]{3}$")) {
            addFieldError("matricula", "Formato inválido. Use 4 números seguidos de 3 letras mayúsculas (ej: 1234ABC).");
        }

        if (marca == null || marca.trim().isEmpty()) {
            addFieldError("marca", "Debe introducir la marca del vehículo.");
        }
    }

    // Getters y Setters
    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setSession(Map<String, Object> session) {
        this.session = session;
    }
}
