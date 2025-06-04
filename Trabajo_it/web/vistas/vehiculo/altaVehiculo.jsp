<%-- 
    Document   : altaVehiculo
    Created on : 04-jun-2025, 13:57:16
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Alta Vehículo</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <h1 class="text-center">
                Alta Vehículo para Cliente <s:property value="#session.cliente.dniCliente" />
            </h1>

            <s:form action="altaVehiculo" method="post" cssClass="mt-4">
                <s:textfield name="matricula" label="Matrícula" required="true" />
                <s:textfield name="marca" label="Marca" required="true" />

                <s:submit value="Dar de Alta" cssClass="btn btn-primary btn-block mt-3" />
            </s:form>

            <s:if test="mensaje != null">
                <div class="alert alert-info mt-3">
                    <s:property value="mensaje" />
                </div>
            </s:if>
        </div>
    </body>
</html>
