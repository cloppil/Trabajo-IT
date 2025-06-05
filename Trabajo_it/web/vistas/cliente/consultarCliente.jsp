<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Consultar Cliente</title>
    <s:head/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/consultarCliente.css" rel="stylesheet">
</head>
<body class="consult-body d-flex align-items-center justify-content-center">

    <div class="consult-container text-center">
        <main class="consult-main w-100 m-auto">
            <h2 class="mb-4 fw-bold text-primary">
                <i class="bi bi-person-circle me-2"></i>Datos del Cliente
            </h2>

            <table class="table table-bordered table-striped shadow-sm">
                <tbody>
                    <tr>
                        <th scope="row" class="w-25">DNI</th>
                        <td><s:property value="#session.cliente.dniCliente"/></td>
                    </tr>
                    <tr>
                        <th scope="row">Nombre</th>
                        <td><s:property value="#session.cliente.nombre"/></td>
                    </tr>
                    <tr>
                        <th scope="row">Teléfono</th>
                        <td><s:property value="#session.cliente.telefono"/></td>
                    </tr>
                    <tr>
                        <th scope="row">Email</th>
                        <td><s:property value="#session.cliente.email"/></td>
                    </tr>
                </tbody>
            </table>
        </main>
    </div>

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</body>
</html>
