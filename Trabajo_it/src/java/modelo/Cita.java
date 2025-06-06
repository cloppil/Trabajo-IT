package modelo;
// Generated 05-jun-2025 10:06:04 by Hibernate Tools 4.3.1


import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Cita generated by hbm2java
 */
public class Cita  implements java.io.Serializable {


     private Integer idCita;
     private Mecanico mecanico;
     private Vehiculo vehiculo;
     private Date fecha;
     private Set reparacions = new HashSet(0);

    public Cita() {
    }

	
    public Cita(Mecanico mecanico, Vehiculo vehiculo, Date fecha) {
        this.mecanico = mecanico;
        this.vehiculo = vehiculo;
        this.fecha = fecha;
    }
    public Cita(Mecanico mecanico, Vehiculo vehiculo, Date fecha, Set reparacions) {
       this.mecanico = mecanico;
       this.vehiculo = vehiculo;
       this.fecha = fecha;
       this.reparacions = reparacions;
    }
   
    public Integer getIdCita() {
        return this.idCita;
    }
    
    public void setIdCita(Integer idCita) {
        this.idCita = idCita;
    }
    public Mecanico getMecanico() {
        return this.mecanico;
    }
    
    public void setMecanico(Mecanico mecanico) {
        this.mecanico = mecanico;
    }
    public Vehiculo getVehiculo() {
        return this.vehiculo;
    }
    
    public void setVehiculo(Vehiculo vehiculo) {
        this.vehiculo = vehiculo;
    }
    public Date getFecha() {
        return this.fecha;
    }
    
    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }
    public Set getReparacions() {
        return this.reparacions;
    }
    
    public void setReparacions(Set reparacions) {
        this.reparacions = reparacions;
    }




}


