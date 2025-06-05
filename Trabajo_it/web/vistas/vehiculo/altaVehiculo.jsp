<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <title>Alta Vehículo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/estilosAltaVehiculo.css" rel="stylesheet" />
    </head>
    <body class="alta-body d-flex align-items-center justify-content-center">

        <div class="alta-container p-4 shadow rounded">
            <h1 class="text-center mb-4 fw-bold text-primary">
                Alta Vehículo para Cliente <s:property value="#session.cliente.dniCliente"/>
            </h1>

            <s:form action="altaVehiculo" method="post" cssClass="needs-validation" novalidate="novalidate">

                <div class="mb-3">
                    <label for="matricula" class="form-label">Matrícula</label>
                    <s:textfield name="matricula" id="matricula" cssClass="form-control" placeholder="Ej: 1234XYZ" required="true" />
                </div>

                <div class="mb-4">
                    <label for="marca" class="form-label">Marca</label>
                    <s:textfield name="marca" id="marca" cssClass="form-control" placeholder="Ej: Toyota" required="true" />
                </div>

                <s:submit value="Dar de Alta" cssClass="btn btn-primary w-100 btn-lg" />
            </s:form>

            <s:if test="mensaje != null">
                <div class="alert alert-info mt-4 text-center">
                    <s:property value="mensaje" />
                </div>
            </s:if>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
