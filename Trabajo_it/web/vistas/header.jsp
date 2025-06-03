<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Prueba Bootstrap Local</title>

        <!-- Bootstrap 3.3.7 CSS local -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

        <!-- jQuery local -->
        <script src="${pageContext.request.contextPath}/js/jquery-1.12.4.min.js"></script>

        <!-- Bootstrap 3.3.7 JS local -->
        <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="text-primary">¡Hola Mundo con Bootstrap local!</h1>
            <p class="lead">Esta es una página JSP usando Bootstrap 3.3.7 sin CDN.</p>
            <button class="btn btn-warning">Botón de prueba local</button>
        </div>
    </body>
</html>
