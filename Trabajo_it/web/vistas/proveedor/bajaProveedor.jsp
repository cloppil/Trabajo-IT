<%-- 
    Document   : bajaProveedor
    Created on : 05-jun-2025, 10:47:23
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Eliminar Proveedor</title>

        <!-- Bootstrap CSS -->
        <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet">
        <!-- Personalizado -->
        <link href="<s:url value='/css/bajaProveedor.css'/>" rel="stylesheet">
        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600&display=swap" rel="stylesheet">
    </head>
    <body>
        <jsp:include page="/vistas/header.jsp" />
        <div class="container">
            <h1>Eliminar Proveedor</h1>
            <s:form action="borrarProveedor" method="post">
                <label for="proveedorSeleccionado">Selecciona proveedor</label>
                <s:select 
                    name="proveedorSeleccionado"
                    list="listaProveedores"
                    listKey="idProveedor"
                    listValue="nombre"
                    headerKey=""
                    headerValue="-- Proveedor --"
                    cssClass="form-select"/>

                <s:submit value="Borrar" cssClass="btn btn-danger"/>
            </s:form>
        </div>
    </body>
</html>

