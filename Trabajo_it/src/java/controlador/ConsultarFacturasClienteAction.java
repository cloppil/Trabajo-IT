/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import DAO.ClienteDAO;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import modelo.Cliente;
import modelo.Factura;
import modelo.Piezas;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author ferna
 */
public class ConsultarFacturasClienteAction extends ActionSupport {

    private List <Factura> listaFacturas;
    private List <Piezas> listaPiezas;

    public ConsultarFacturasClienteAction() {
    }

    @Override
    public String execute() throws Exception {

        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession(false);

        if (session != null) {
            Cliente cliente = (Cliente) session.getAttribute("cliente");

            if (cliente != null) {
                String dni = cliente.getDniCliente();

                // 2. Pasar el DNI al DAO
                ClienteDAO cliDAO = new ClienteDAO();
                listaFacturas = cliDAO.listarFacturas(dni);
                listaPiezas = cliDAO.listarPiezas(listaFacturas);
                return SUCCESS;
            }
        }

        return ERROR;
    }

    public List<Factura> getListaFacturas() {
        return listaFacturas;
    }

    public void setListaFacturas(List<Factura> listaFacturas) {
        this.listaFacturas = listaFacturas;
    }

    public List<Piezas> getListaPiezas() {
        return listaPiezas;
    }

    public void setListaPiezas(List<Piezas> listaPiezas) {
        this.listaPiezas = listaPiezas;
    }
       
}
