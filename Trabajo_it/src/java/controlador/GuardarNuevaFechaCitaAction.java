package controlador;

import DAO.CitaDAO;
import com.opensymphony.xwork2.ActionSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import modelo.Cita;
import org.apache.struts2.interceptor.SessionAware;

public class GuardarNuevaFechaCitaAction extends ActionSupport implements SessionAware {

    private String nuevaFechaStr;
    private int idCita;
    private Map<String, Object> session;

    @Override
    public String execute() throws Exception {
        // Parseo validado desde el método validate()
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        Date nuevaFecha = sdf.parse(nuevaFechaStr);

        CitaDAO citaDAO = new CitaDAO();
        List<Cita> listado = (List<Cita>) session.get("listadoCitas");

        if (listado != null) {
            for (Cita cita : listado) {
                if (cita.getIdCita() == idCita) {
                    cita.setFecha(nuevaFecha);
                    citaDAO.actualizarCita(cita);
                    break;
                }
            }
        }

        return SUCCESS;
    }

    @Override
    public void validate() {
        boolean tieneErrores = false;

        if (nuevaFechaStr == null || nuevaFechaStr.trim().isEmpty()) {
            addFieldError("nuevaFechaStr", "Debe ingresar una nueva fecha.");
            tieneErrores = true;
        }

        // Validar formato con regex
        if (!tieneErrores && !nuevaFechaStr.matches("^\\d{2}/\\d{2}/\\d{4}$")) {
            addFieldError("nuevaFechaStr", "Formato de fecha inválido. Use dd/MM/yyyy.");
            tieneErrores = true;
        }

        Date nuevaFecha = null;
        if (!tieneErrores) {
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            sdf.setLenient(false);

            try {
                nuevaFecha = sdf.parse(nuevaFechaStr);
            } catch (ParseException e) {
                addFieldError("nuevaFechaStr", "Formato de fecha inválido. Use dd/MM/yyyy.");
                tieneErrores = true;
            }
        }

        // Validar si es una fecha pasada (sólo si la fecha es válida)
        if (!tieneErrores && nuevaFecha != null) {
            Date hoy = new java.sql.Date(new Date().getTime());
            if (nuevaFecha.before(hoy)) {
                addFieldError("nuevaFechaStr", "La fecha no puede ser anterior a hoy.");
            }
        }
    }

    // Getters y Setters
    public String getNuevaFechaStr() {
        return nuevaFechaStr;
    }

    public void setNuevaFechaStr(String nuevaFechaStr) {
        this.nuevaFechaStr = nuevaFechaStr;
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
