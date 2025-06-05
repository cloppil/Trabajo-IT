<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Mis Vehículos - AutoFast</title>

        <!-- Bootstrap CSS -->
        <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet" />
        <link href="<s:url value='/css/estilosMisVehiculos.css'/>" rel="stylesheet" />
    </head>
    <body class="update-body d-flex align-items-center justify-content-center">

        <div class="update-container">
            <h2 class="text-center mb-4 text-primary fw-bold">Vehículos Registrados</h2>

            <s:if test="listaVehiculos != null && !listaVehiculos.isEmpty()">
                <table class="table table-bordered table-striped shadow-sm">
                    <thead class="table-dark">
                        <tr>
                            <th>Matrícula</th>
                            <th>Marca</th>
                            <th>DNI Cliente</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="listaVehiculos" var="vehiculo">
                            <tr>
                                <td><s:property value="#vehiculo.matricula"/></td>
                                <td><s:property value="#vehiculo.marca"/></td>
                                <td><s:property value="#vehiculo.cliente.dniCliente"/></td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </s:if>

            <s:else>
                <div class="alert alert-warning text-center">No tienes vehículos registrados.</div>
            </s:else>
        </div>

        <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
    </body>
</html>
