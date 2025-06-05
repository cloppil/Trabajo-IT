package controlador;

import com.opensymphony.xwork2.ActionSupport;
import DAO.PiezaDAO;
import modelo.Piezas;

public class DevolverPiezaAction extends ActionSupport {

    private int idPieza;

    public int getIdPieza() {
        return idPieza;
    }

    public void setIdPieza(int idPieza) {
        this.idPieza = idPieza;
    }

    @Override
    public String execute() {
        PiezaDAO piezaDAO = new PiezaDAO();
        Piezas pieza = piezaDAO.obtenerPorId(idPieza); // Método que debes tener en tu DAO
        if (pieza != null) {
            piezaDAO.devolverPieza(pieza);
            return SUCCESS;
        } else {
            addActionError("No se encontró la pieza con ID: " + idPieza);
            return ERROR;
        }
    }
}
