package controlador;

import com.opensymphony.xwork2.ActionSupport;
import DAO.ProveedorDAO;
import modelo.Proveedor;
import java.util.List;

public class IrMostrarProveedoresAction extends ActionSupport {

    private List<Proveedor> listaProveedores;

    public String execute() {
        try {
            ProveedorDAO dao = new ProveedorDAO();
            listaProveedores = dao.obtenerTodos();  // Trae todos los proveedores
            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Error al obtener la lista de proveedores.");
            return ERROR;
        }
    }

    // Getter y setter
    public List<Proveedor> getListaProveedores() {
        return listaProveedores;
    }

    public void setListaProveedores(List<Proveedor> listaProveedores) {
        this.listaProveedores = listaProveedores;
    }
}
