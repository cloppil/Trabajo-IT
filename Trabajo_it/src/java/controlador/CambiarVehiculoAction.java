package controlador;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import DAO.VehiculoDAO;
import modelo.Vehiculo;
import java.util.Map;

public class CambiarVehiculoAction extends ActionSupport {

    private String marca;

    // Getter y Setter
    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    @Override
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        Vehiculo v = (Vehiculo) session.get("vehiculo");

        if (v != null) {
            // Solo actualizar la marca
            v.setMarca(marca);

            // Guardar en base de datos
            VehiculoDAO dao = new VehiculoDAO();
            dao.actualizarVehiculo(v);

            // Actualizar también en sesión por si se sigue usando
            session.put("vehiculo", v);
        }

        return SUCCESS;
    }

    @Override
    public void validate() {
        if (marca == null || marca.trim().isEmpty()) {
            addFieldError("marca", "La marca no puede estar vacía.");
        }
    }
}
