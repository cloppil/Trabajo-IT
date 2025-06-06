<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Solicitar Cita</title>
    <s:head/>

    <!-- Bootstrap y Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Estilos personalizados -->
    <link href="<s:url value='/css/solicitarCita.css' />" rel="stylesheet" />
</head>
<body class="bg-light d-flex justify-content-center align-items-center min-vh-100">

    <div class="form-update w-100 m-auto" style="max-width: 450px;">
        <s:form action="solicitarCita" method="post" theme="simple">
            <h1 class="h3 mb-4 fw-bold text-primary text-center">
                <i class="bi bi-calendar2-plus me-2"></i>Solicitar Cita
            </h1>

            <div class="mb-3">
                <label for="vehiculoSeleccionado" class="form-label fw-semibold">
                    <i class="bi bi-car-front me-1"></i> Vehículo
                </label>
                <s:select id="vehiculoSeleccionado"
                          name="vehiculoSeleccionado"
                          list="#session.listaVehiculos"
                          listKey="matricula"
                          listValue="matricula"
                          headerKey=""
                          headerValue="Elige un vehículo"
                          cssClass="form-select" />
            </div>

            <div class="mb-3">
                <label for="mecanicoSeleccionado" class="form-label fw-semibold">
                    <i class="bi bi-person-badge me-1"></i> Mecánico
                </label>
                <s:select id="mecanicoSeleccionado"
                          name="mecanicoSeleccionado"
                          list="#session.listaMecanicos"
                          listKey="dniMecanico"
                          listValue="nombre"
                          headerKey=""
                          headerValue="Selecciona un mecánico"
                          cssClass="form-select" />
            </div>

            <div class="form-floating mb-4">
                <s:textfield id="fecha"
                             name="fecha"
                             cssClass="form-control"
                             placeholder="Ej: 04/06/2025"
                             required="true" />
                <label for="fecha"><i class="bi bi-calendar-event me-1"></i> Fecha (dd-mm-aaaa)</label>
            </div>

            <s:submit value="📅 Solicitar Cita" cssClass="btn btn-primary w-100 py-2" />
        </s:form>
    </div>

    <!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
