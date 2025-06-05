package controlador;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ActionContext;
import DAO.PiezaDAO;
import modelo.Piezas;
import java.util.Map;

public class ModificarPiezaAction extends ActionSupport {

    private String nombrePieza;

    // Getter y Setter
    public String getNombrePieza() {
        return nombrePieza;
    }

    public void setNombrePieza(String nombrePieza) {
        this.nombrePieza = nombrePieza;
    }

    @Override
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        Piezas pieza = (Piezas) session.get("pieza");

        if (pieza != null) {
            pieza.setNombrePieza(nombrePieza);

            PiezaDAO dao = new PiezaDAO();
            dao.actualizarPieza(pieza);

            // Actualizar en sesión por si se vuelve a usar
            session.put("pieza", pieza);
        }

        return SUCCESS;
    }

    @Override
    public void validate() {
        if (nombrePieza == null || nombrePieza.trim().isEmpty()) {
            addFieldError("nombrePieza", "El nombre de la pieza no puede estar vacío.");
        }
    }
}
