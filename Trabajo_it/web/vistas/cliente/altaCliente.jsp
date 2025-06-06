<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Registro Cliente</title>
    <s:head/>

    <!-- Bootstrap & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Estilo personalizado opcional -->
    <link href="${pageContext.request.contextPath}/css/estilosRegistro.css" rel="stylesheet" />
</head>
<body class="bg-light d-flex align-items-center justify-content-center min-vh-100">

    <main class="form-update w-100 m-auto" style="max-width: 450px;">
        <s:form action="registroCliente" method="post" theme="simple">
            <h1 class="h3 mb-4 fw-bold text-primary text-center">
                <i class="bi bi-person-circle me-2"></i>Registro de Cliente
            </h1>

            <div class="form-floating mb-3">
                <s:textfield name="nombre" id="nombre" cssClass="form-control" placeholder="Nombre" required="true"/>
                <label for="nombre">Nombre</label>
            </div>

            <div class="form-floating mb-3">
                <s:textfield name="dni" id="dni" cssClass="form-control" placeholder="DNI" required="true"/>
                <label for="dni">DNI</label>
            </div>

            <div class="form-floating mb-3">
                <s:password name="password" id="password" cssClass="form-control" placeholder="Contraseña" required="true"/>
                <label for="password">Contraseña</label>
            </div>

            <div class="form-floating mb-4">
                <s:textfield name="telefono" id="telefono" cssClass="form-control" placeholder="Número de teléfono" required="true"/>
                <label for="telefono">Número de Teléfono</label>
            </div>

            <s:submit value="Registrarse" name="btnRegistrarse" cssClass="btn btn-success w-100 py-2"/>
            <s:fielderror cssClass="pt-3 text-danger text-center" />
        </s:form>
    </main>

</body>
</html>
