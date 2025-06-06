<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Nueva Reparación</title>
    <s:head/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/estilosNuevaReparacion.css" rel="stylesheet">
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container text-center">
        <main class="form-update w-100 m-auto">
            <s:form action="nuevaReparacion" method="post" theme="simple">
                <h1 class="h3 mb-4 fw-bold text-primary">
                    <i class="bi bi-tools me-2"></i>Nueva Reparación
                </h1>

                <div class="form-floating mb-3">
                    <s:select name="citaSeleccionada"
                              list="#session.listaCitas"
                              listKey="idCita"
                              listValue="idCita"
                              headerKey=""
                              headerValue="Seleccione una cita"
                              cssClass="form-select"
                              id="citaSeleccionada" />
                    <label for="citaSeleccionada">Cita</label>
                </div>

                <div class="form-floating mb-3">
                    <s:textfield name="precio" id="precio" cssClass="form-control" placeholder="Precio" required="true"/>
                    <label for="precio">Precio</label>
                </div>

                <div class="form-floating mb-3">
                    <s:textfield name="tipo" id="tipo" cssClass="form-control" placeholder="Tipo de reparación" required="true"/>
                    <label for="tipo">Tipo</label>
                </div>

                <div class="form-floating mb-4">
                    <s:textfield name="comentario" id="comentario" cssClass="form-control" placeholder="Comentario" required="true"/>
                    <label for="comentario">Comentario</label>
                </div>

                <s:submit value="Crear Reparación" cssClass="btn btn-primary w-100 py-2"/>
            </s:form>
        </main>
    </div>

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</body>
</html>
