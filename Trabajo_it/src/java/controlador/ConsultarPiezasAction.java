package controlador;

import com.opensymphony.xwork2.ActionSupport;
import DAO.PiezaDAO;
import modelo.Piezas;
import java.util.List;

public class ConsultarPiezasAction extends ActionSupport {

    private List<Piezas> listaPiezas;
    private String mensaje;

    public String execute() {
        try {
            PiezaDAO dao = new PiezaDAO();
            listaPiezas = dao.obtenerTodos();

            if (listaPiezas != null && !listaPiezas.isEmpty()) {
                mensaje = "Piezas encontradas.";
            } else {
                mensaje = "No hay piezas registradas.";
            }

            return SUCCESS;

        } catch (Exception e) {
            mensaje = "Error al consultar piezas: " + e.getMessage();
            return ERROR;
        }
    }

    // Getters y setters
    public List<Piezas> getListaPiezas() {
        return listaPiezas;
    }

    public void setListaPiezas(List<Piezas> listaPiezas) {
        this.listaPiezas = listaPiezas;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}
