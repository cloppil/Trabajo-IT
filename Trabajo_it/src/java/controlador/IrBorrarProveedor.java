/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.MecanicoDAO;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;

/**
 *
 * @author ferna
 */
public class IrBorrarProveedor extends ActionSupport {
    
    private List listaProveedores;
    
    public IrBorrarProveedor() {
    }
    
    public String execute() throws Exception {
        
        MecanicoDAO mecDAO = new MecanicoDAO();
        listaProveedores = mecDAO.listarProveedores();
        return SUCCESS;     
    }

    public List getListaProveedores() {
        return listaProveedores;
    }

    public void setListaProveedores(List listaProveedores) {
        this.listaProveedores = listaProveedores;
    }
    
}
