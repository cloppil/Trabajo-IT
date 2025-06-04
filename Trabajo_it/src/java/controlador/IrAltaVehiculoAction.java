package controlador;

import com.opensymphony.xwork2.ActionSupport;
import modelo.Cliente;
import org.apache.struts2.interceptor.SessionAware;

import java.util.Map;

public class IrAltaVehiculoAction extends ActionSupport implements SessionAware {

    private Map<String, Object> session;

    @Override
    public String execute() {
        // Verifica que el cliente esté en sesión
        Cliente cliente = (Cliente) session.get("cliente");
        if (cliente == null) {
            return "login";  // redirigir a login si no hay cliente en sesión
        }
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }
}
