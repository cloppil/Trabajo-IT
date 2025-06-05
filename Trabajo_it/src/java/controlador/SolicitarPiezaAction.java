package controlador;

import com.opensymphony.xwork2.ActionSupport;
import DAO.PiezaDAO;
import DAO.ProveedorDAO;
import DAO.ReparacionDAO;
import modelo.Piezas;
import modelo.Proveedor;
import modelo.Reparacion;

public class SolicitarPiezaAction extends ActionSupport {

    private int idProveedor;
    private int idReparacion;
    private String nombrePieza;

    public String execute() {
        try {
            // Obtener entidades completas desde los DAO usando los IDs seleccionados
            ProveedorDAO proveedorDAO = new ProveedorDAO();
            ReparacionDAO reparacionDAO = new ReparacionDAO();

            Proveedor proveedor = proveedorDAO.obtenerPorId(idProveedor);
            Reparacion reparacion = reparacionDAO.obtenerPorId(idReparacion);

            if (proveedor == null || reparacion == null) {
                addActionError("Proveedor o reparación no encontrados.");
                return ERROR;
            }

            // Crear y guardar la nueva pieza
            Piezas nuevaPieza = new Piezas(proveedor, reparacion, nombrePieza);
            PiezaDAO piezaDAO = new PiezaDAO();
            piezaDAO.solicitarPieza(nuevaPieza);

            addActionMessage("Pieza registrada correctamente.");
            return SUCCESS;

        } catch (Exception e) {
            e.printStackTrace();
            addActionError("Error al registrar la pieza.");
            return ERROR;
        }
    }

    // Getters y Setters para los campos del formulario
    public int getIdProveedor() {
        return idProveedor;
    }

    public void setIdProveedor(int idProveedor) {
        this.idProveedor = idProveedor;
    }

    public int getIdReparacion() {
        return idReparacion;
    }

    public void setIdReparacion(int idReparacion) {
        this.idReparacion = idReparacion;
    }

    public String getNombrePieza() {
        return nombrePieza;
    }

    public void setNombrePieza(String nombrePieza) {
        this.nombrePieza = nombrePieza;
    }
}
