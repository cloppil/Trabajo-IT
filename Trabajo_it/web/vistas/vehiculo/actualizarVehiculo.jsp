<%-- 
    Document   : actualizarVehiculo
    Created on : 04-jun-2025, 17:21:01
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar vehiculo</title>
    </head>
    <body>
        <jsp:include page="/vistas/header.jsp" />
        <h1>Introduce la matrícula del coche que quieres editar:</h1>
        
        <s:form action="irActualizarVehiculoSeleccionado" method="post">
            <s:textfield name="matricula" label="Matrícula" required="true" />
            <s:submit value="Seleccionar"/>
        </s:form>
        
    </body>
</html>
