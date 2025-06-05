<%-- 
    Document   : modificarPieza
    Created on : 05-jun-2025
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Pieza</title>
    </head>
    <body>
        <jsp:include page="/vistas/header.jsp" />
        <h1>Introduce el ID de la pieza que quieres modificar:</h1>
        
        <s:form action="irModificarPiezaSeleccionada" method="post">
            <s:textfield name="idPieza" label="ID de la pieza" required="true" />
            <s:submit value="Seleccionar"/>
        </s:form>

        <s:actionerror />
    </body>
</html>
