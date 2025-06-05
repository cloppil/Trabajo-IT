<%-- 
    Document   : nuevaReparación
    Created on : 05-jun-2025, 16:29:20
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<s:url value='/css/bootstrap.min.css' />" rel="stylesheet">

        <title>Nueva Reparación</title>
    </head>
    <body>
        <h1>Introduce los datos de la reparación</h1>
        <table> 
            <tr>
                <s:form action="nuevaReparacion" method="post" cssClass="needs-validation" novalidate="true">
                    <td>
                        <div class="mb-3">
                            <label class="form-label"><i class="bi bi-car-front"></i>Cita: </label>
                            <s:select name="citaSeleccionada"
                                      list="#session.listaCitas"
                                      listKey="idCita"
                                      listValue="idCita"
                                      headerKey=""
                                      headerValue="Seleccione una cita"
                                      cssClass="form-select"/>
                        </div>
                    </td>
                <div class="mb-3">
                    <label class="form-label"> Precio: </label>
                    <s:textfield name="precio"
                                 cssClass="form-control"
                                 required="true"/>

                </div>
                <td>
                    <div class="mb-3">
                        <label class="form-label"> Tipo: </label>
                        <s:textfield name="tipo"
                                     cssClass="form-control"
                                     required="true"/>
                    </div>
                </td>
                <td>
                    <div class="mb-3">
                        <label class="form-label"> Comentario: </label>
                        <s:textfield name="comentario"
                                     cssClass="form-control"
                                     required="true"/>
                    </div>
                </td>
                <td>
                    <div class="submit-btn">
                        <s:submit value="Crear factura" cssClass="btn btn-primary btn-lg"/>
                    </div>
                </td>
            </s:form>
        </tr>
    </table>

</body>
</html>
