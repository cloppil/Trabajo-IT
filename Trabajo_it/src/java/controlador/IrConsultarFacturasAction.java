package controlador;

import com.opensymphony.xwork2.ActionSupport;
import modelo.Mecanico;
import modelo.Factura;
import DAO.FacturaDAO;
import java.util.List;
import org.apache.struts2.ServletActionContext;

public class IrConsultarFacturasAction extends ActionSupport {

    private List<Factura> listaFacturas;

    public String execute() {
        // Obtener el mecánico desde la sesión HTTP directamente
        Mecanico mecanico = (Mecanico) ServletActionContext.getRequest().getSession().getAttribute("mecanico");

        if (mecanico != null) {
            FacturaDAO dao = new FacturaDAO();
            listaFacturas = dao.obtenerFacturasPorIdMecanico(mecanico.getDniMecanico());
            return SUCCESS;
        } else {
            addActionError("No hay mecánico en sesión.");
            return ERROR;
        }
    }

    // Getter para que el JSP acceda a la lista
    public List<Factura> getListaFacturas() {
        return listaFacturas;
    }

    public void setListaFacturas(List<Factura> listaFacturas) {
        this.listaFacturas = listaFacturas;
    }
}
