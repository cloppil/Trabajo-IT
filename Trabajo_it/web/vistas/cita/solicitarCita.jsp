<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Solicitar Cita</title>
    <meta charset="UTF-8">
    <link href="<s:url value='/css/bootstrap.min.css' />" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    
</head>
<body>
    <jsp:include page="/vistas/header.jsp" />
    <div class="card">
        <div class="card-header">
            <span class="emoji">💌</span> Solicita tu Cita
        </div>
        <div class="card-body">
            <s:form action="solicitarCita" method="post" cssClass="needs-validation" novalidate="true">
                
                <div class="mb-3">
                    <label class="form-label"><i class="bi bi-car-front"></i> Vehículo</label>
                    <s:select name="vehiculoSeleccionado"
                              list="#session.listaVehiculos"
                              listKey="matricula"
                              listValue="matricula"
                              headerKey=""
                              headerValue="Elige un vehículo"
                              cssClass="form-select"/>
                </div>

                <div class="mb-3">
                    <label class="form-label"><i class="bi bi-person-badge"></i> Mecánico</label>
                    <s:select name="mecanicoSeleccionado"
                              list="#session.listaMecanicos"
                              listKey="dniMecanico"
                              listValue="nombre"
                              headerKey=""
                              headerValue="Selecciona un mecánico"
                              cssClass="form-select"/>
                </div>

                <div class="mb-3">
                    <label class="form-label"><i class="bi bi-calendar-event"></i> Fecha (dd-mm-aaaa)</label>
                    <s:textfield name="fecha"
                                 cssClass="form-control"
                                 placeholder="Ej: 04/06/2025"
                                 required="true"/>
                </div>

                <div class="submit-btn">
                    <s:submit value="📅 Solicitar Cita" cssClass="btn btn-primary btn-lg"/>
                </div>

            </s:form>
        </div>
    </div>

</body>
</html>
