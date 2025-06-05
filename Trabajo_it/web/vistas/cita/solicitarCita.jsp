<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Solicitar Cita</title>

        <!-- Bootstrap CSS CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />

        <!-- Archivo CSS externo -->
        <link href="<s:url value='/css/solicitarCita.css' />" rel="stylesheet" />
        
    </head>
    <body>

        <main class="d-flex justify-content-center align-items-center min-vh-100 bg-light">
            <div class="card shadow-lg rounded-4 p-4 solicitar-cita-card">
                <div class="card-header text-white text-center rounded-top-4 bg-primary py-3">
                    <span class="emoji fs-3 me-2">💌</span> Solicita tu Cita
                </div>
                <div class="card-body">
                    <s:form action="solicitarCita" method="post" cssClass="needs-validation" novalidate="true">

                        <div class="mb-4">
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

                        <div class="mb-4">
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

                        <div class="mb-4">
                            <label for="fecha" class="form-label fw-semibold">
                                <i class="bi bi-calendar-event me-1"></i> Fecha (dd-mm-aaaa)
                            </label>
                            <s:textfield id="fecha"
                                         name="fecha"
                                         cssClass="form-control"
                                         placeholder="Ej: 04/06/2025"
                                         required="true" />
                        </div>

                        <div class="d-grid">
                            <s:submit value="📅 Solicitar Cita" cssClass="btn btn-primary btn-lg" />
                        </div>

                    </s:form>
                </div>
            </div>
        </main>

        <!-- Bootstrap JS Bundle (opcional para funcionalidades JS) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    </body>
</html>
