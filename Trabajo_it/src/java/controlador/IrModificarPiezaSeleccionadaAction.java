package controlador;

import DAO.PiezaDAO;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelo.Piezas;

public class IrModificarPiezaSeleccionadaAction extends ActionSupport {

    private int idPieza;

    public IrModificarPiezaSeleccionadaAction() {
    }

    @Override
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();

        PiezaDAO piezaDAO = new PiezaDAO();
        Piezas pieza = piezaDAO.obtenerPorId(this.getIdPieza());

        if (pieza != null) {
            session.put("pieza", pieza);
            return SUCCESS;
        } else {
            addActionError("No se encontró la pieza con ID: " + idPieza);
            return ERROR;
        }
    }

    // Getter y Setter
    public int getIdPieza() {
        return idPieza;
    }

    public void setIdPieza(int idPieza) {
        this.idPieza = idPieza;
    }
}
