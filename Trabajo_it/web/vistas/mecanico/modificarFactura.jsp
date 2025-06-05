<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Modificar Factura - AutoFast</title>
    <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet">
    <style>
        body {
            font-family: 'Rubik', sans-serif;
            background-color: #f8f9fa;
        }
        .container {
            margin-top: 50px;
            max-width: 600px;
        }
        .form-label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center mb-4">Modificar Factura</h2>

        <s:form action="modificarFactura" method="post" cssClass="needs-validation">
            <div class="mb-3">
                <label class="form-label">ID Factura</label>
                <s:textfield name="factura.idFactura" cssClass="form-control" disabled="true" value="%{#session.factura.idFactura}" />
            </div>

            <div class="mb-3">
                <label class="form-label">Fecha</label>
                <s:textfield name="factura.fecha" cssClass="form-control" disabled="true" value="%{#session.factura.fecha}" />
            </div>

            <div class="mb-3">
                <label class="form-label">Importe Total (€)</label>
                <s:textfield name="importeTotal" cssClass="form-control" value="%{#session.factura.importeTotal}" required="true"/>
            </div>

            <div class="text-center">
                <s:submit value="Guardar Cambios" cssClass="btn btn-primary"/>
                <a href="irConsultarFacturas.action" class="btn btn-secondary">Cancelar</a>
            </div>
        </s:form>

        <s:if test="mensaje != null">
            <div class="alert alert-info mt-3"><s:property value="mensaje"/></div>
        </s:if>
    </div>

    <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
</body>
</html>
