<%-- 
    Document   : actualizarCliente
    Created on : 04-jun-2025, 14:11:48
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Actualizar Cliente</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="/vistas/header.jsp" />
        <div class="container mt-5">
            <h1 class="text-center mb-4">
                Actualizar Datos del Mecanico <s:property value="#session.mecanico.dniMecanico"/>
            </h1>

            <s:form action="actualizarMecanico" method="post" cssClass="mt-4">
                <!-- Campos vacíos a rellenar manualmente -->
                <s:hidden name="dniMecanico" />

                <s:textfield name="nombre" label="Nombre" />
                <s:password name="contrasenia" label="Contraseña" />
                <s:textfield name="salario" label="Salario" />
                <s:textfield name="rama" label="Rama" />

                <s:submit value="Guardar Cambios" cssClass="btn btn-success btn-block mt-3" />
            </s:form>

            <s:if test="mensaje != null">
                <div class="alert alert-info mt-3">
                    <s:property value="mensaje"/>
                </div>
            </s:if>
        </div>
    </body>
</html>

