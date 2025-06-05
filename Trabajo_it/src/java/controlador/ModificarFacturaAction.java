package controlador;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import DAO.FacturaDAO;
import modelo.Factura;

public class ModificarFacturaAction extends ActionSupport {

    private double importeTotal;
    private String mensaje;

    public String execute() {
        try {
            HttpSession session = ServletActionContext.getRequest().getSession();
            Factura factura = (Factura) session.getAttribute("factura");

            if (factura != null) {
                factura.setImporteTotal(importeTotal); // actualizamos el importe

                FacturaDAO dao = new FacturaDAO();
                dao.actualizarFactura(factura); // persistimos el cambio

                mensaje = "Factura actualizada correctamente.";
                // Si quieres, podrías quitarla de la sesión aquí:
                // session.removeAttribute("factura");
                return SUCCESS;
            } else {
                mensaje = "No se encontró la factura en sesión.";
                return ERROR;
            }

        } catch (Exception e) {
            mensaje = "Error al modificar la factura: " + e.getMessage();
            return ERROR;
        }
    }

    // Getters y setters
    public double getImporteTotal() {
        return importeTotal;
    }

    public void setImporteTotal(double importeTotal) {
        this.importeTotal = importeTotal;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}
