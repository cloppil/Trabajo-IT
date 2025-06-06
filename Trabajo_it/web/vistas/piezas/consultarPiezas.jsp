<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Piezas Registradas - AutoFast</title>

        <!-- Bootstrap CSS -->
        <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet" />
        <link href="<s:url value='/css/estilosMisVehiculos.css'/>" rel="stylesheet" />
    </head>
    <body class="update-body d-flex align-items-center justify-content-center">

        <div class="update-container">
            <h2 class="text-center mb-4 text-primary fw-bold">Piezas Registradas</h2>

            <s:if test="listaPiezas != null && !listaPiezas.isEmpty()">
                <table class="table table-bordered table-striped shadow-sm">
                    <thead class="table-dark">
                        <tr>
                            <th>ID Pieza</th>
                            <th>Nombre</th>
                            <th>ID Proveedor</th>
                            <th>ID Reparación</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="listaPiezas" var="pieza">
                            <tr>
                                <td><s:property value="#pieza.idPieza"/></td>
                                <td><s:property value="#pieza.nombrePieza"/></td>
                                <td><s:property value="#pieza.proveedor.idProveedor"/></td>
                                <td><s:property value="#pieza.reparacion.idReparacion"/></td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </s:if>

            <s:else>
                <div class="alert alert-warning text-center">No hay piezas registradas.</div>
            </s:else>
        </div>

        <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
    </body>
</html>
