/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.MecanicoDAO;
import com.opensymphony.xwork2.ActionSupport;
import modelo.Proveedor;

/**
 *
 * @author ferna
 */
public class BorrarProveedorAction extends ActionSupport {
    
    private String proveedorSeleccionado;
    
    public BorrarProveedorAction() {
    }
    
    public String execute() throws Exception {
        MecanicoDAO mecDAO = new MecanicoDAO();
        int idProveedor = Integer.parseInt(proveedorSeleccionado);
        Proveedor p = mecDAO.encontrarProveedor(idProveedor);
        mecDAO.eliminarProveedor(p);
        return SUCCESS;
    }

    public String getProveedorSeleccionado() {
        return proveedorSeleccionado;
    }

    public void setProveedorSeleccionado(String proveedorSeleccionado) {
        this.proveedorSeleccionado = proveedorSeleccionado;
    }
    
}
