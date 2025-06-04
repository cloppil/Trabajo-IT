/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.VehiculoDAO;
import com.opensymphony.xwork2.ActionSupport;
import modelo.Vehiculo;

public class BajaVehiculoAction extends ActionSupport {

    private String matricula;

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
        VehiculoDAO vehiculoDao = new VehiculoDAO();
        Vehiculo v = vehiculoDao.obtnerVehiculoPorMatricula(this.getMatricula());
        vehiculoDao.bajaVehiculo(v);
        return SUCCESS;
    }
}
