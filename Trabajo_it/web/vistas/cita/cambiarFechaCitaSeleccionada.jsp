<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Modificar Fecha de Cita</title>
        <link rel="stylesheet" href="<s:url value='/css/bootstrap.min.css'/>">
        <link rel="stylesheet" href="<s:url value='/css/cambiarFecha.css'/>">
    </head>
    <body>
        <jsp:include page="/vistas/header.jsp" />
        <div class="container form-container mt-5">
            <div class="card shadow-sm">
                <div class="card-header bg-primary text-white">
                    <h4 class="mb-0">Modificar Fecha de la Cita</h4>
                </div>
                <div class="card-body">
                    <s:form action="guardarNuevaFechaCita" cssClass="needs-validation">
                        <!-- Campo oculto para el ID -->
                        <s:hidden name="idCita" value="%{#session.idCitaSeleccionada}" />

                        <!-- Campo de fecha -->
                        <div class="mb-3">
                            <label for="nuevaFecha" class="form-label">Nueva Fecha (dd/mm/yyyy):</label>
                            <s:textfield name="nuevaFecha" id="nuevaFecha" cssClass="form-control" placeholder="Ej: 10/06/2025"/>
                        </div>

                        <!-- Botón de envío -->
                        <div class="text-end">
                            <s:submit cssClass="btn btn-primary" value="Modificar" />
                        </div>
                    </s:form>
                </div>
            </div>
        </div>
    </body>
</html>
