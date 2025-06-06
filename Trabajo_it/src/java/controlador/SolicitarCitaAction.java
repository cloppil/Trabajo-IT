/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.CitaDAO;
import DAO.MecanicoDAO;
import DAO.VehiculoDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import modelo.Cita;
import modelo.Mecanico;
import modelo.Vehiculo;

/**
 *
 * @author Carlos
 */
public class SolicitarCitaAction extends ActionSupport {

    private Date fecha;
    private String vehiculoSeleccionado;
    private String mecanicoSeleccionado;
    private String fechaTexto;

    public SolicitarCitaAction() {
    }

    public String execute() throws Exception {
        VehiculoDAO vDAO = new VehiculoDAO();
        MecanicoDAO mecDAO = new MecanicoDAO();
        CitaDAO cDAO = new CitaDAO();

        Vehiculo v = vDAO.obtnerVehiculoPorMatricula(vehiculoSeleccionado);
        Mecanico m = mecDAO.obtenerMecanicoPorDNI(mecanicoSeleccionado);

        Cita c = new Cita(m, v, fecha);
        cDAO.registrarCita(c);
        return SUCCESS;
    }

    @Override
    public void validate() {
        if (fechaTexto == null || fechaTexto.trim().isEmpty()) {
            addFieldError("fechaTexto", "La fecha es obligatoria.");
            return;
        }

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        sdf.setLenient(false);

        try {
            Date fechaConvertida = sdf.parse(fechaTexto);
            this.fecha = fechaConvertida; // pasar la fecha válida al campo real

            Date hoy = new Date();
            if (!fechaConvertida.after(hoy)) {
                addFieldError("fechaTexto", "La fecha debe ser futura.");
            }

        } catch (ParseException e) {
            addFieldError("fechaTexto", "Formato inválido. Use dd/MM/yyyy.");
        }
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getVehiculoSeleccionado() {
        return vehiculoSeleccionado;
    }

    public void setVehiculoSeleccionado(String vehiculoSeleccionado) {
        this.vehiculoSeleccionado = vehiculoSeleccionado;
    }

    public String getMecanicoSeleccionado() {
        return mecanicoSeleccionado;
    }

    public void setMecanicoSeleccionado(String mecanicoSeleccionado) {
        this.mecanicoSeleccionado = mecanicoSeleccionado;
    }

    public String getFechaTexto() {
        return fechaTexto;
    }

    public void setFechaTexto(String fechaTexto) {
        this.fechaTexto = fechaTexto;
    }

}
