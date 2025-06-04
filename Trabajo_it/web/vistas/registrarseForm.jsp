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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
    </head>
    <body>

        <h1>Bienvenido a nuestro taller!</h1>

        <h2>¿Como te quieres registrar?</h2>

        <s:form action="elegirRegistro" method="post" >
            <s:radio label="Mecanico / Cliente" name="rolUsuario" list="{'mecanico', 'cliente'}"/>
            <s:submit value="Aceptar" name="aceptar"></s:submit>
        </s:form>
        <a href="<s:url action='volverInicio'/>" class="btnModificado btn mt-5">
            <s:text name="Volver" />
        </a> 

    </body>
</html>

