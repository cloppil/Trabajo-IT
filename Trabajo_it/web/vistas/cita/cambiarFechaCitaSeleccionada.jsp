<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Modificar Fecha de Cita</title>
    <s:head/>

    <!-- Bootstrap y estilos -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/actualizarVehiculo.css" rel="stylesheet" />
</head>
<body class="bg-light d-flex justify-content-center align-items-center min-vh-100">

    <div class="form-update w-100 m-auto" style="max-width: 400px;">
        <s:form action="guardarNuevaFechaCita" method="post" theme="simple">
            <h1 class="h3 mb-4 fw-bold text-primary text-center">
                <i class="bi bi-calendar2-check me-2"></i>Modificar Fecha
            </h1>

            <!-- Campo oculto para el ID -->
            <s:hidden name="idCita" value="%{#session.idCitaSeleccionada}" />

            <!-- Fecha nueva -->
            <div class="form-floating mb-4">
                <s:textfield name="nuevaFecha"
                             id="nuevaFecha"
                             cssClass="form-control"
                             placeholder="Ej: 10/06/2025"
                             required="true" />
                <label for="nuevaFecha">Nueva Fecha (dd/mm/yyyy)</label>
            </div>

            <!-- Botón -->
            <s:submit cssClass="btn btn-primary w-100 py-2" value="Modificar" />
        </s:form>
    </div>

    <!-- JS opcional -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
