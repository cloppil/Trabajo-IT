<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Modificar Factura - AutoFast</title>
    
    <!-- Bootstrap & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    
    <!-- Estilo personalizado -->
    <link href="<s:url value='/css/estilosActualizarFactura.css'/>" rel="stylesheet" />
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container text-center">
        <main class="form-update w-100 m-auto">
            <s:form action="modificarFactura" method="post" theme="simple">
                <h1 class="h3 mb-4 fw-bold text-primary">
                    <i class="bi bi-receipt-cutoff me-2"></i>Modificar Factura
                </h1>

                <div class="form-floating mb-3">
                    <s:textfield name="factura.idFactura" id="idFactura" cssClass="form-control" disabled="true" value="%{#session.factura.idFactura}" />
                    <label for="idFactura">ID Factura</label>
                </div>

                <div class="form-floating mb-3">
                    <s:textfield name="factura.fecha" id="fecha" cssClass="form-control" disabled="true" value="%{#session.factura.fecha}" />
                    <label for="fecha">Fecha</label>
                </div>

                <div class="form-floating mb-4">
                    <s:textfield name="importeTotal" id="importeTotal" cssClass="form-control" placeholder="Importe Total" value="%{#session.factura.importeTotal}" required="true" />
                    <label for="importeTotal">Importe Total (€)</label>
                </div>

                <s:submit value="Guardar Cambios" cssClass="btn btn-primary w-100 py-2 mb-2" />

                <a href="irConsultarFacturas.action" class="btn btn-secondary w-100">Cancelar</a>
            </s:form>

            <s:if test="mensaje != null">
                <div class="alert alert-info mt-3">
                    <i class="bi bi-info-circle-fill me-2"></i><s:property value="mensaje"/>
                </div>
            </s:if>
        </main>
    </div>

    <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
</body>
</html>
