package controlador;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import DAO.VehiculoDAO;
import modelo.Cliente;
import modelo.Vehiculo;
import java.util.List;

public class ConsultarVehiculosAction extends ActionSupport {

    private List<Vehiculo> listaVehiculos;
    private String mensaje;

    public String execute() {
        try {
            HttpSession session = ServletActionContext.getRequest().getSession();
            Cliente cliente = (Cliente) session.getAttribute("cliente");

            if (cliente != null) {
                VehiculoDAO dao = new VehiculoDAO();
                listaVehiculos = dao.obtenerVehiculosPorCliente(cliente.getDniCliente());

                if (listaVehiculos != null && !listaVehiculos.isEmpty()) {
                    mensaje = "Vehículos encontrados.";
                } else {
                    mensaje = "No tienes vehículos registrados.";
                }

                return SUCCESS;
            } else {
                mensaje = "No hay cliente en sesión.";
                return ERROR;
            }

        } catch (Exception e) {
            mensaje = "Error al consultar vehículos: " + e.getMessage();
            return ERROR;
        }
    }

    // Getters y setters

    public List<Vehiculo> getListaVehiculos() {
        return listaVehiculos;
    }

    public void setListaVehiculos(List<Vehiculo> listaVehiculos) {
        this.listaVehiculos = listaVehiculos;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}
