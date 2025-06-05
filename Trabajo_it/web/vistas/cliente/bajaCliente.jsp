<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Baja de Cliente - AutoFast</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/estilosBajaCliente.css" rel="stylesheet">
    </head>
    <body class="baja-body d-flex align-items-center justify-content-center">

        <div class="baja-container text-center">
            <h2 class="text-danger mb-4">Baja de Cliente</h2>

            <p class="mb-4 fs-5">
                ¿Estás seguro que deseas eliminar al cliente 
                <strong><s:property value="#session.cliente.nombre"/></strong>?
            </p>
            <s:form action="bajaCliente" method="post" cssClass="w-100">
                <button type="submit" class="btn btn-danger btn-lg w-100">
                    <i class="bi bi-trash3-fill me-2"></i>Eliminar Cliente
                </button>
            </s:form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Bootstrap Icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    </body>
</html>
