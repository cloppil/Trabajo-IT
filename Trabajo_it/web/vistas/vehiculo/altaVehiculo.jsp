<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Alta Vehículo</title>
    <s:head/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/estilosAltaVehiculo.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
</head>
<body class="alta-body d-flex align-items-center justify-content-center">

    <div class="alta-container text-center">
        <main class="form-update w-100 m-auto">
            <s:form action="altaVehiculo" method="post" theme="simple">
                <h1 class="h3 mb-4 fw-bold text-primary">
                    <i class="bi bi-plus-circle me-2"></i>Alta Vehículo
                </h1>

                <p class="text-muted mb-4">
                    Cliente: <strong><s:property value="#session.cliente.dniCliente"/></strong>
                </p>

                <div class="form-floating mb-3">
                    <s:textfield name="matricula" id="matricula" cssClass="form-control" placeholder="Matrícula"/>
                    <label for="matricula">Matrícula</label>
                </div>
                    <s:fielderror fieldName="matricula" />

                <div class="form-floating mb-4">
                    <s:textfield name="marca" id="marca" cssClass="form-control" placeholder="Marca"/>
                    <label for="marca">Marca</label>
                </div>
                    <s:fielderror fieldName="marca" />

                <s:submit value="Dar de Alta" cssClass="btn btn-primary w-100 py-2" />
            </s:form>

            <s:if test="mensaje != null">
                <div class="alert alert-info mt-3">
                    <i class="bi bi-info-circle-fill me-2"></i><s:property value="mensaje" />
                </div>
            </s:if>
        </main>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
