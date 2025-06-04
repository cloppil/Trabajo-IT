package controlador;

import DAO.ClienteDAO;
import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import modelo.Cliente;

public class ConsultarClienteAction extends ActionSupport {

    private String dni;
    private Cliente cliente;

    @Override
    public String execute() {
        ClienteDAO dao = new ClienteDAO();
        cliente = dao.consultarCliente(dni);

        if (cliente != null) {
            return SUCCESS;
        } else {
            addActionError("Cliente no encontrado con DNI: " + dni);
            return ERROR;
        }
    }

    // Getters y Setters necesarios para Struts2
    public String getDni() {
        return dni;
    }

    public void setDni(String dni) {
        this.dni = dni;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
}
