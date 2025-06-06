<%-- 
    Document   : bajaProveedor
    Created on : 05-jun-2025, 10:47:23
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Eliminar Proveedor - AutoFast</title>
    <s:head />

    <!-- Bootstrap & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Estilos personalizados -->
    <link href="${pageContext.request.contextPath}/css/bajaProveedor.css" rel="stylesheet" />
</head>
<body class="bg-light d-flex align-items-center justify-content-center min-vh-100">

    <main class="form-update w-100 m-auto" style="max-width: 420px;">
        <s:form action="borrarProveedor" method="post" theme="simple">
            <h1 class="h3 mb-4 fw-bold text-danger text-center">
                <i class="bi bi-trash-fill me-2"></i>Eliminar Proveedor
            </h1>

            <div class="form-floating mb-4">
                <s:select 
                    name="proveedorSeleccionado"
                    id="proveedorSeleccionado"
                    list="listaProveedores"
                    listKey="idProveedor"
                    listValue="nombre"
                    headerKey=""
                    headerValue="-- Proveedor --"
                    cssClass="form-select"
                    required="true" />
                <label for="proveedorSeleccionado">Selecciona proveedor</label>
            </div>

            <s:submit value="Borrar" cssClass="btn btn-danger w-100 py-2" />
            <s:fielderror cssClass="pt-3 text-danger text-center" />
        </s:form>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" defer></script>
</body>
</html>
