<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Actualizar Vehículo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/actualizarVehiculo.css" rel="stylesheet">
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container text-center">
        <main class="form-update w-100 m-auto">
            <h1 class="h3 mb-4 fw-bold text-primary">Actualizar Vehículo</h1>
            <p class="mb-4">Introduce la matrícula del coche que quieres editar:</p>

            <s:form action="irActualizarVehiculoSeleccionado" method="post" theme="simple" cssClass="form-update">
                <div class="mb-3 text-start">
                    <label for="matricula" class="form-label">Matrícula</label>
                    <s:textfield name="matricula" id="matricula" cssClass="form-control" required="true" />
                </div>
                <s:submit value="Seleccionar" cssClass="btn btn-primary w-100 py-2" />
            </s:form>
        </main>
    </div>

</body>
</html>
