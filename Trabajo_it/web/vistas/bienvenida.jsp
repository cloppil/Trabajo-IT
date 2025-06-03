<%-- 
    Document   : bienvenida
    Created on : 03-jun-2025, 10:01:40
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenida</title>

    <!-- Bootstrap local -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- CSS personalizado -->
    <link href="css/estilos.css" rel="stylesheet">

    <!-- Google Fonts (puedes quitar si no tienes conexión) -->
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600&display=swap" rel="stylesheet">
</head>
<body>
    <div class="welcome-container text-center">
        <div class="row align-items-center">
            <!-- Iniciar Sesión -->
            <div class="col-md-4 action-box">
                <h4>¿Estás registrado?</h4>
                <s:form action="iniciarSesion">
                    <button type="submit" class="btn btn-primary mt-3">Iniciar Sesión</button>
                </s:form>
            </div>

            <!-- Logo en el centro -->
            <div class="col-md-4">
                <img src="images/logo.png" alt="Logo de la aplicación" class="img-fluid logo mb-3">
                <p class="text-muted">Bienvenido a nuestra aplicación</p>
            </div>

            <!-- Registrarse -->
            <div class="col-md-4 action-box">
                <h4>¿No te has registrado?</h4>
                <s:form action="registrarse">
                    <button type="submit" class="btn btn-success mt-3">Registrarse</button>
                </s:form>
            </div>
        </div>
    </div>

    <!-- Bootstrap JS local -->
    <script src="bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>


