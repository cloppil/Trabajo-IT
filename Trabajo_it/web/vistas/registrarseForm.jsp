<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600&display=swap" rel="stylesheet">
    <!-- Estilos personalizados -->
    <link href="${pageContext.request.contextPath}/css/estilosRegistro.css" rel="stylesheet">
</head>
<body class="bg-light d-flex align-items-center justify-content-center min-vh-100">

    <div class="form-update w-100 m-auto text-center" style="max-width: 400px;">
        <s:form action="elegirRegistro" method="post" theme="simple">
            <h1 class="h3 mb-3 fw-bold text-primary">
                <i class="bi bi-person-plus me-2"></i>Registro de Usuario
            </h1>

            <h5 class="mb-4 text-muted">¿Cómo te quieres registrar?</h5>

            <div class="form-floating mb-4">
                <s:select name="rolUsuario"
                          list="{'mecanico', 'cliente'}"
                          id="rolUsuario"
                          cssClass="form-select"
                          headerKey=""
                          headerValue="Selecciona un rol" />
                <label for="rolUsuario">Rol</label>
            </div>

            <s:submit value="Aceptar" name="aceptar" cssClass="btn btn-success w-100 py-2" />
        </s:form>

        <div class="mt-4">
            <a href="<s:url action='volverInicio'/>" class="btn btn-outline-secondary w-100">
                <i class="bi bi-arrow-left me-2"></i>Volver
            </a>
        </div>
    </div>

</body>
</html>
