/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.ClienteDAO;
import DAO.MecanicoDAO;
import DAO.VehiculoDAO;
import static com.opensymphony.xwork2.Action.ERROR;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import modelo.Cliente;
import modelo.Mecanico;
import modelo.Vehiculo;

/**
 *
 * @author ferna
 */
public class IrActualizarVehiculoSeleccionadoAction extends ActionSupport {

    private String matricula;

    public IrActualizarVehiculoSeleccionadoAction() {
    }

    public String execute() throws Exception {

        Map<String, Object> session = ActionContext.getContext().getSession();
        Cliente cliente = (Cliente)session.get("cliente");

        VehiculoDAO vehiculoDAO = new VehiculoDAO();
        Vehiculo v = vehiculoDAO.obtnerVehiculoPorMatricula(this.getMatricula(), cliente.getDniCliente());

        if (v != null) {
            session.put("vehiculo", v);
            return SUCCESS;
        } else {
            return ERROR;
        }
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }
    
}
