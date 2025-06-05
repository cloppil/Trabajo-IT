<%-- 
    Document   : verReparaciones
    Created on : 05-jun-2025, 17:42:44
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver Reparaciones</title>
    </head>
    <body>
        <div class="container text-center table-container">
            <h2 class="mb-4">Reparaciones <strong><s:property value="#session.mecanico.nombre"/></strong></h2>

            <div class="table-responsive">
                <table class="table table-bordered table-hover custom-table mx-auto">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Comentario</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="#session.listadoReparaciones" id="reparacion">
                            <tr>
                                <td><s:property value="%{#reparacion.idReparacion}"/></td>
                                <td><s:property value="%{#reparacion.tipo}"/></td>
                                <td><s:property value="%{#reparacion.precio}"/></td>
                                <td><s:property value="%{#reparacion.comentario}"/></td>
                                <td><s:form action="">
                                <button type="submit" class="btn btn-outline-info btn-block">Eliminar Reparación</button>
                            </s:form></td>
                                <td><s:form action="">
                                <button type="submit" class="btn btn-outline-info btn-block">Modificar Reparación</button>
                            </s:form></td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </div>

        </div>
    </body>
</html>
