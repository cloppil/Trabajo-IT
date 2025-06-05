package controlador;

import DAO.CitaDAO;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.List;
import java.util.Map;
import modelo.Cita;
import org.apache.struts2.interceptor.SessionAware;

public class GuardarNuevaFechaCitaAction extends ActionSupport implements SessionAware {

    private Date nuevaFecha;
    private int idCita;
    private Map<String, Object> session;

    @Override
    public String execute() throws Exception {
        CitaDAO citaDAO = new CitaDAO();
        List<Cita> listado = (List<Cita>) session.get("listadoCitas");

        if (listado != null) {
            for (Cita cita : listado) {
                if (cita.getIdCita() == idCita) {
                    cita.setFecha(nuevaFecha); // Aquí actualizas la fecha
                    citaDAO.actualizarCita(cita);
                    break;
                }
            }
        }

        
        return SUCCESS;
    }

    public Date getNuevaFecha() {
        return nuevaFecha;
    }

    public void setNuevaFecha(Date nuevaFecha) {
        this.nuevaFecha = nuevaFecha;
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
