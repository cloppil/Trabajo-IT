<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>AutoFast</title>

        <!-- Bootstrap CSS -->
        <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet">
        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
        <!-- Estilos personalizados -->
        <link href="<s:url value='/css/header.css'/>" rel="stylesheet">
    </head>
    <body>
        <div class="header-container d-flex flex-column align-items-center justify-content-center py-3">
            <!-- Logo centrado -->
            
                <img src="<s:url value='/images/logo.png'/>" alt="Logo AutoFast" class="logo-img mb-2">
                

            <!-- Botón Logout centrado -->
            <div class="d-flex align-items-center justify-content-center">
                <i class="fa-solid fa-user me-2 text-white"></i>

                <s:if test="#session.mecanico != null">
                    <span class="user-info me-3 text-white"><s:property value="#session.mecanico.nombre"/></span>
                </s:if>

                <s:elseif test="#session.cliente != null">
                    <span class="user-info me-3 text-white"><s:property value="#session.cliente.nombre"/></span>
                </s:elseif>

                <a href="<s:url action='logout'/>" class="btn btnModificado">Logout</a>
            </div>
        </div>
    </body>
</html>
