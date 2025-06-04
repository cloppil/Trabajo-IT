/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.VehiculoDAO;
import com.opensymphony.xwork2.ActionSupport;

public class BajaVehiculoAction extends ActionSupport {

    private String matricula;
    private VehiculoDAO vehiculoDAO = new VehiculoDAO();

    // Setter para recibir el parámetro desde la vista
    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    // Getter por si quieres mostrarlo después o validar
    public String getMatricula() {
        return matricula;
    }

    @Override
    public String execute() {
        try {
            if (matricula == null || matricula.trim().isEmpty()) {
                addActionError("La matrícula es obligatoria");
                return ERROR;
            }
            vehiculoDAO.bajaVehiculo(matricula);
            addActionMessage("Vehículo dado de baja correctamente");
            return SUCCESS;
        } catch (Exception e) {
            addActionError("Error al eliminar vehículo: " + e.getMessage());
            return ERROR;
        }
    }
}
