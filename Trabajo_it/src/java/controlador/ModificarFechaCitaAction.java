package controlador;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.interceptor.SessionAware;

public class ModificarFechaCitaAction extends ActionSupport implements SessionAware {

    private int idCita;
    private Map<String, Object> session;

    @Override
    public String execute() throws Exception {
        session.put("idCitaSeleccionada", this.getIdCita());
        return SUCCESS;
    }

    public int getIdCita() {
        return idCita;
    }

    public void setIdCita(int idCita) {
        this.idCita = idCita;
    }

    @Override
    public void setSession(Map<String, Object> session) {
        this.session = session;
    }
}
