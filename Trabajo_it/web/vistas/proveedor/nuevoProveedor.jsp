<%-- 
    Document   : nuevoProveedor
    Created on : 05-jun-2025, 10:29:01
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <title>Nuevo Proveedor - AutoFast</title>
        <s:head />

        <!-- Bootstrap & Icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Estilos personalizados (opcional) -->
        <link href="${pageContext.request.contextPath}/css/estilosNuevoProveedor.css" rel="stylesheet" />
    </head>
    <body class="bg-light d-flex align-items-center justify-content-center min-vh-100">

        <main class="form-update w-100 m-auto" style="max-width: 450px;">
            <s:form action="registroProveedor" method="post" theme="simple">
                <h1 class="h3 mb-4 fw-bold text-primary text-center">
                    <i class="bi bi-building me-2"></i>Registro de Proveedor
                </h1>

                <div class="form-floating mb-3">
                    <s:textfield name="nombre" id="nombre" cssClass="form-control" placeholder="Nombre" required="true" />
                    <label for="nombre">Nombre</label>
                </div>

                <div class="form-floating mb-3">
                    <s:textfield name="email" id="email" cssClass="form-control" placeholder="Email" type="email" required="true" />
                    <label for="email">Email</label>
                </div>

                <div class="form-floating mb-3">
                    <s:textfield name="direccion" id="direccion" cssClass="form-control" placeholder="Dirección" required="true" />
                    <label for="direccion">Dirección</label>
                </div>

                <div class="form-floating mb-4">
                    <s:textfield name="telefono" id="telefono" cssClass="form-control" placeholder="Número de teléfono" required="true" />
                    <label for="telefono">Número de teléfono</label>
                </div>

                <s:submit value="Registrar" name="btnRegistrarse" cssClass="btn btn-primary w-100 py-2" />
                <s:fielderror cssClass="pt-3 text-danger text-center" />
            </s:form>
        </main>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" defer></script>
    </body>
</html>
