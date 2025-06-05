package controlador;

import com.opensymphony.xwork2.ActionSupport;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import DAO.FacturaDAO;
import modelo.Factura;
import modelo.Mecanico;
import java.util.List;

public class ConsultarFacturasAction extends ActionSupport {

    private List<Factura> listaFacturas;
    private String mensaje;

    public String execute() {
        try {
            HttpSession session = ServletActionContext.getRequest().getSession();
            Mecanico mecanico = (Mecanico) session.getAttribute("mecanico");

            if (mecanico != null) {
                FacturaDAO dao = new FacturaDAO();
                listaFacturas = dao.obtenerFacturasPorIdMecanico(mecanico.getDniMecanico());

                if (listaFacturas != null && !listaFacturas.isEmpty()) {
                    mensaje = "Facturas encontradas.";
                } else {
                    mensaje = "No hay facturas registradas.";
                }

                return SUCCESS;
            } else {
                mensaje = "No hay mecánico en sesión.";
                return ERROR;
            }

        } catch (Exception e) {
            mensaje = "Error al consultar facturas: " + e.getMessage();
            return ERROR;
        }
    }

    // Getters y setters

    public List<Factura> getListaFacturas() {
        return listaFacturas;
    }

    public void setListaFacturas(List<Factura> listaFacturas) {
        this.listaFacturas = listaFacturas;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }
}
