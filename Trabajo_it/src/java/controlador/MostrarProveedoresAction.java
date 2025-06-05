package controlador;

import com.opensymphony.xwork2.ActionSupport;
import DAO.ProveedorDAO;
import modelo.Proveedor;
import java.util.List;

public class MostrarProveedoresAction extends ActionSupport {

    private List<Proveedor> listaProveedores;
    private String mensaje;

    public String execute() {
        try {
            ProveedorDAO dao = new ProveedorDAO();
            listaProveedores = dao.obtenerTodos();

            if (listaProveedores != null && !listaProveedores.isEmpty()) {
                mensaje = "Proveedores encontrados.";
            } else {
                mensaje = "No hay proveedores registrados.";
            }

            return SUCCESS;

        } catch (Exception e) {
            mensaje = "Error al consultar proveedores: " + e.getMessage();
            return ERROR;
        }
    }

    // Getters y setters
    public List<Proveedor> getListaProveedores() {
        return listaProveedores;
    }

    public void setListaProveedores(List<Proveedor> listaProveedores) {
        this.listaProveedores = listaProveedores;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}
