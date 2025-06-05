package controlador;

import com.opensymphony.xwork2.ActionSupport;
import DAO.PiezaDAO;
import modelo.Piezas;
import java.util.List;

public class IrConsultarPiezasAction extends ActionSupport {

    private List<Piezas> listaPiezas;

    public String execute() {
        try {
            PiezaDAO dao = new PiezaDAO();
            listaPiezas = dao.obtenerTodos();  // Sin filtrar, trae todas
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Error al obtener la lista de piezas.");
            return ERROR;
        }
    }

    // Getter y setter
    public List<Piezas> getListaPiezas() {
        return listaPiezas;
    }

    public void setListaPiezas(List<Piezas> listaPiezas) {
        this.listaPiezas = listaPiezas;
    }
}
