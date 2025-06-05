package controlador;

import com.opensymphony.xwork2.ActionSupport;
import DAO.ProveedorDAO;
import DAO.ReparacionDAO;
import modelo.Proveedor;
import modelo.Reparacion;
import java.util.List;

public class IrSolicitarPiezaAction extends ActionSupport {

    private List<Proveedor> listaProveedores;
    private List<Reparacion> listaReparaciones;

    public String execute() {
        try {
            ProveedorDAO proveedorDAO = new ProveedorDAO();
            ReparacionDAO reparacionDAO = new ReparacionDAO();

            listaProveedores = proveedorDAO.obtenerTodos();
            listaReparaciones = reparacionDAO.obtenerTodos();

            return SUCCESS;
        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Error al cargar datos para solicitar pieza.");
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

    public List<Reparacion> getListaReparaciones() {
        return listaReparaciones;
    }

    public void setListaReparaciones(List<Reparacion> listaReparaciones) {
        this.listaReparaciones = listaReparaciones;
    }
}
