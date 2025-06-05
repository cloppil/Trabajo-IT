package controlador;

import com.opensymphony.xwork2.ActionSupport;
import modelo.Factura;
import DAO.FacturaDAO;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpSession;

public class IrModificarFacturaAction extends ActionSupport {

    private int idFactura;

    public String execute() {
        try {
            FacturaDAO dao = new FacturaDAO();
            Factura factura = dao.obtenerFacturaPorId(idFactura);

            if (factura != null) {
                // Guardamos la factura en sesión para que ModificarFacturaAction la recoja luego
                HttpSession session = ServletActionContext.getRequest().getSession();
                session.setAttribute("factura", factura);
                return SUCCESS;
            } else {
                addActionError("No se encontró la factura con ID: " + idFactura);
                return ERROR;
            }

        } catch (Exception e) {
            addActionError("Error al cargar la factura: " + e.getMessage());
            return ERROR;
        }
    }

    // Getter y Setter del parámetro recibido desde el formulario
    public int getIdFactura() {
        return idFactura;
    }

    public void setIdFactura(int idFactura) {
        this.idFactura = idFactura;
    }
}
