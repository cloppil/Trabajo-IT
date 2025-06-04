<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Bienvenida</title>

        <!-- Bootstrap CSS -->
        <link href="<s:url value='/css/bootstrap.min.css' />" rel="stylesheet">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600&display=swap" rel="stylesheet">

        <!-- Estilos personalizados -->
        <link href="${pageContext.request.contextPath}/css/estilosBienvenida.css" rel="stylesheet">
    </head>
    <body class="bienvenida-body">

        <div class="container">
            <div class="row align-items-center justify-content-center text-center">

                <!-- Iniciar Sesión -->
                <div class="col-md-4 mb-4">
                    <div class="card bienvenida-card">
                        <h5 class="mb-3">¿Estás registrado?</h5>
                        <s:form action="iniciarSesionForm">
                            <button type="submit" class="btn btn-primary w-100">Iniciar Sesión</button>
                        </s:form>
                    </div>
                </div>

                <!-- Logo en el centro -->
                <div class="col-md-4 mb-4">
                    <div class="text-center">
                        <img src="<s:url value='/images/logo.png' />" alt="Logo de la aplicación" class="img-fluid mb-3 logo-img">
                        <h3 class="fw-bold">Bienvenido a nuestra aplicación</h3>
                    </div>
                </div>

                <!-- Registrarse -->
                <div class="col-md-4 mb-4">
                    <div class="card bienvenida-card">
                        <h5 class="mb-3">¿No te has registrado?</h5>
                        <s:form action="registrarseForm">
                            <button type="submit" class="btn btn-success w-100">Registrarse</button>
                        </s:form>
                    </div>
                </div>

            </div>
        </div>

        <!-- Bootstrap JS -->
        <script src="<s:url value='/js/bootstrap.bundle.min.js' />"></script>
    </body>
</html>
