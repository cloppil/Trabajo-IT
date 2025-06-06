<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Mis Facturas - AutoFast</title>

    <!-- Bootstrap CSS -->
    <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet" />
    <link href="<s:url value='/css/estilosMisVehiculos.css'/>" rel="stylesheet" />
</head>
<body class="update-body d-flex align-items-center justify-content-center">


    <div class="update-container w-100 text-center">
        <h2 class="text-primary mb-4 fw-bold">Facturas Generadas</h2>

        <s:if test="listaFacturas != null && !listaFacturas.isEmpty()">
            <div class="table-responsive">
                <table class="table table-bordered table-striped shadow-sm">
                    <thead class="table-dark">
                        <tr>
                            <th>ID Factura</th>
                            <th>Fecha</th>
                            <th>Total</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="listaFacturas" var="factura">
                            <tr>
                                <td><s:property value="#factura.idFactura"/></td>
                                <td><s:property value="#factura.fecha"/></td>
                                <td><s:property value="#factura.importeTotal"/> €</td>
                                <td>
                                    <s:form action="irModificarFactura" method="get" cssClass="d-inline">
                                        <s:hidden name="idFactura" value="%{#factura.idFactura}"/>
                                        <s:submit value="Modificar" cssClass="btn btn-sm btn-primary"/>
                                    </s:form>
                                </td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </div>
        </s:if>

        <s:else>
            <div class="alert alert-warning text-center">No hay facturas registradas.</div>
        </s:else>
    </div>

    <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
</body>
</html>
