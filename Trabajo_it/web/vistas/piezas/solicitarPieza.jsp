<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Solicitar Nueva Pieza - AutoFast</title>

    <!-- Bootstrap CSS & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Estilos personalizados -->
    <link href="${pageContext.request.contextPath}/css/estilosSolicitarPieza.css" rel="stylesheet">
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container text-center">
        <main class="form-update w-100 m-auto">
            <s:form action="solicitarPieza" method="post" theme="simple">
                <h1 class="h3 mb-4 fw-bold text-primary">
                    <i class="bi bi-plus-square-dotted me-2"></i>Solicitar Nueva Pieza
                </h1>

                <!-- Selector de proveedor -->
                <div class="form-floating mb-3">
                    <s:select
                        name="idProveedor"
                        id="idProveedor"
                        cssClass="form-select"
                        list="listaProveedores"
                        listKey="idProveedor"
                        listValue="nombre"
                        headerKey=""
                        headerValue="-- Selecciona un proveedor --" />
                    <label for="idProveedor">Proveedor</label>
                </div>

                <!-- Selector de reparación -->
                <div class="form-floating mb-3">
                    <s:select
                        name="idReparacion"
                        id="idReparacion"
                        cssClass="form-select"
                        list="listaReparaciones"
                        listKey="idReparacion"
                        listValue="comentario"
                        headerKey=""
                        headerValue="-- Selecciona una reparación --" />
                    <label for="idReparacion">Reparación</label>
                </div>

                <!-- Campo de texto para el nombre de la pieza -->
                <div class="form-floating mb-4">
                    <s:textfield
                        name="nombrePieza"
                        id="nombrePieza"
                        cssClass="form-control"
                        placeholder="Nombre de la pieza"
                        required="true"/>
                    <label for="nombrePieza">Nombre de la pieza</label>
                </div>

                <!-- Botón de envío -->
                <s:submit value="Solicitar Pieza" cssClass="btn btn-primary w-100 py-2" />
            </s:form>

            <!-- Mostrar errores -->
            <s:actionerror cssClass="alert alert-danger mt-3" />
        </main>
    </div>

    <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
</body>
</html>
