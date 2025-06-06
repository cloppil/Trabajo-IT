<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Proveedores Registrados - AutoFast</title>

    <!-- Bootstrap CSS -->
    <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet" />
    <link href="<s:url value='/css/estilosMisVehiculos.css'/>" rel="stylesheet" />
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container">
        <h2 class="text-center mb-4 text-primary fw-bold">Proveedores Registrados</h2>

        <s:if test="listaProveedores != null && !listaProveedores.isEmpty()">
            <table class="table table-bordered table-striped shadow-sm">
                <thead class="table-dark">
                    <tr>
                        <th>ID Proveedor</th>
                        <th>Nombre</th>
                        <th>Dirección</th>
                        <th>Teléfono</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <s:iterator value="listaProveedores" var="proveedor">
                        <tr>
                            <td><s:property value="#proveedor.idProveedor"/></td>
                            <td><s:property value="#proveedor.nombre"/></td>
                            <td><s:property value="#proveedor.direccion"/></td>
                            <td><s:property value="#proveedor.telefono"/></td>
                            <td><s:property value="#proveedor.email"/></td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table>
        </s:if>

        <s:else>
            <div class="alert alert-warning text-center">No hay proveedores registrados.</div>
        </s:else>
    </div>

    <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
</body>
</html>
