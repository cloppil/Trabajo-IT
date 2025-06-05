<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Mis Facturas - AutoFast</title>

        <!-- Bootstrap CSS -->
        <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet">
        <style>
            body {
                font-family: 'Rubik', sans-serif;
                background-color: #f8f9fa;
            }
            .container {
                margin-top: 50px;
            }
            .table thead th {
                background-color: #0d6efd;
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h2 class="text-center mb-4">Facturas Generadas</h2>

            <s:if test="listaFacturas != null && !listaFacturas.isEmpty()">
                <table class="table table-bordered table-striped shadow-sm">
                    <thead>
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
            </s:if>

            <s:else>
                <div class="alert alert-warning text-center">No hay facturas registradas.</div>
            </s:else>
        </div>

        <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
    </body>
</html>
