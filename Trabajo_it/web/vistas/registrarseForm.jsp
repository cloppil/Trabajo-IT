<%-- 
    Document   : registrarseForm
    Created on : 04-jun-2025, 10:21:14
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registro</title>

        <!-- Bootstrap CSS -->
        <link href="<s:url value='/css/bootstrap.min.css' />" rel="stylesheet">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600&display=swap" rel="stylesheet">

        <!-- Estilos personalizados -->
        <link href="${pageContext.request.contextPath}/css/estilosRegistro.css" rel="stylesheet">
    </head>
    <body class="registro-body">

        <div class="registro-container text-center">
            <h1 class="mb-3 text-primary">¡Bienvenido a nuestro taller!</h1>
            <h4 class="mb-4">¿Cómo te quieres registrar?</h4>

            <s:form action="elegirRegistro" method="post">
                <div class="mb-3 d-flex flex-column align-items-center">
                    <label for="rolUsuario" class="form-label w-100 text-center">Selecciona un rol:</label>
                    <s:select name="rolUsuario" list="{'mecanico', 'cliente'}" cssClass="form-select w-75 text-center" id="rolUsuario"/>
                </div>
                <div class="d-flex justify-content-center">
                    <s:submit value="Aceptar" name="aceptar" cssClass="btn btn-success w-75"/>
                </div>
            </s:form>

            <div class="mt-4">
                <a href="<s:url action='volverInicio'/>" class="btn btn-outline-secondary w-100">
                    <s:text name="Volver" />
                </a>
            </div>
        </div>

    </body>
</html>
