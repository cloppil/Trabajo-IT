/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.MecanicoDAO;
import DAO.VehiculoDAO;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import java.util.List;
import java.util.Map;
import modelo.Mecanico;
import modelo.Vehiculo;

/**
 *
 * @author Carlos
 */
public class IrSolicitarCitaAction {
    
    public IrSolicitarCitaAction() {
    }
    
    public String execute() throws Exception {
        Map<String, Object> session = ActionContext.getContext().getSession();
        
        MecanicoDAO mecDAO = new MecanicoDAO();
        VehiculoDAO vDAO = new VehiculoDAO();
        
        List<Mecanico> listaMecanicos = mecDAO.obtenerMecanicos();
        List<Vehiculo>listaVehiculos = vDAO.obtenerVehiculos();
        
        session.put("listaMecanicos", listaMecanicos);
        session.put("listaVehiculos", listaVehiculos);
        
        return SUCCESS;
    }



    
}
