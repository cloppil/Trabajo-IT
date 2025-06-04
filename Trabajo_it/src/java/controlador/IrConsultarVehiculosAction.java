package controlador;

import com.opensymphony.xwork2.ActionSupport;
import modelo.Cliente;
import modelo.Vehiculo;
import DAO.VehiculoDAO;
import java.util.List;
import org.apache.struts2.ServletActionContext;

public class IrConsultarVehiculosAction extends ActionSupport {

    private List<Vehiculo> listaVehiculos;

    public String execute() {
        // Obtener el cliente de la sesión HTTP directamente
        Cliente cliente = (Cliente) ServletActionContext.getRequest().getSession().getAttribute("cliente");

        if (cliente != null) {
            VehiculoDAO dao = new VehiculoDAO();
            listaVehiculos = dao.obtenerVehiculosPorCliente(cliente.getDniCliente());
            return SUCCESS;
        } else {
            addActionError("No hay cliente en sesión.");
            return ERROR;
        }
    }

    // Getter para que el JSP acceda a la lista
    public List<Vehiculo> getListaVehiculos() {
        return listaVehiculos;
    }

    public void setListaVehiculos(List<Vehiculo> listaVehiculos) {
        this.listaVehiculos = listaVehiculos;
    }
}
