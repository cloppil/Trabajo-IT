<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Consultar Mecánico</title>
        <s:head/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/consultarMecanico.css" rel="stylesheet">
    </head>
    <body class="consult-body d-flex align-items-center justify-content-center">

        <div class="consult-container text-center">
            <main class="consult-main w-100 m-auto">
                <h2 class="mb-4 fw-bold text-primary">
                    <i class="bi bi-person-gear me-2"></i>Datos del Mecánico
                </h2>

                <table class="table table-bordered table-striped shadow-sm">
                    <tbody>
                        <tr>
                            <th scope="row" class="w-25">DNI</th>
                            <td><s:property value="#session.mecanico.dniMecanico"/></td>
                        </tr>
                        <tr>
                            <th scope="row">Nombre</th>
                            <td><s:property value="#session.mecanico.nombre"/></td>
                        </tr>
                        <tr>
                            <th scope="row">Salario</th>
                            <td><s:property value="#session.mecanico.salario"/></td>
                        </tr>
                        <tr>
                            <th scope="row">Rama</th>
                            <td><s:property value="#session.mecanico.rama"/></td>
                        </tr>
                    </tbody>
                </table>
            </main>
        </div>

        <!-- Bootstrap Icons -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    </body>
</html>
