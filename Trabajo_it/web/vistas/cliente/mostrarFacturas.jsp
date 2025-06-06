<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Facturas</title>
    <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet" />
        <link href="<s:url value='/css/estilosMisVehiculos.css'/>" rel="stylesheet" />
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container">
        <h1 class="mb-4 text-center text-primary fw-bold">Facturas</h1>

        <table class="table table-striped table-hover table-bordered align-middle">
            <thead class="table-dark">
                <tr>
                    <th scope="col">Importe total</th>
                    <th scope="col">Fecha</th>
                    <th scope="col">Piezas</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="listaFacturas" var="factura">
                    <tr>
                        <td><s:property value="#factura.importeTotal" /></td>
                        <td><s:property value="#factura.fecha" /></td>
                        <td>
                            <ul class="list-unstyled mb-0">
                                <s:iterator value="listaPiezas" var="pieza">
                                    <li><s:property value="#pieza.nombrePieza" /></li>
                                </s:iterator>
                            </ul>
                        </td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
