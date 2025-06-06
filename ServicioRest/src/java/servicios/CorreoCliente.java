/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servicios;

import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;
import javax.ws.rs.Consumes;
import javax.ws.rs.Produces;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PUT;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 * REST Web Service
 *
 * @author ferna
 */
@Path("correoCliente")
public class CorreoCliente {

    @Context
    private UriInfo context;

    /**
     * Creates a new instance of CorreoCliente
     */
    public CorreoCliente() {
    }

    /**
     * Retrieves representation of an instance of servicios.CorreoCliente
     *
     * @return an instance of java.lang.String
     */
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String getTextPlain(@QueryParam("nombre") String nombre, @QueryParam("dni") String dni) {
        String dominio = "@autofast.com";

        // Validación básica por si los parámetros están vacíos o muy cortos
        if (nombre == null || nombre.isEmpty() || dni == null || dni.length() < 3) {
            return "Error: parámetros inválidos";
        }

        // Generar el correo: primera letra del nombre + 3 primeras del apellido
        String nombreCorreo = (nombre.substring(0, 3).toLowerCase() + dni.substring(0, 3));
        String correo = nombreCorreo + dominio;

        return correo;
    }

}
