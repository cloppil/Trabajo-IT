<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Actualizar Mecánico</title>
    <s:head/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/estilosActualizarMecanico.css" rel="stylesheet">
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container text-center">
        <main class="form-update w-100 m-auto">
            <s:form action="actualizarMecanico" method="post" theme="simple">
                <h1 class="h3 mb-4 fw-bold text-primary">
                    <i class="bi bi-tools me-2"></i>Actualizar Mecánico
                </h1>

                <p class="text-muted mb-4">DNI: <strong><s:property value="#session.mecanico.dniMecanico"/></strong></p>

                <s:hidden name="dniMecanico" />

                <div class="form-floating mb-3">
                    <s:textfield name="nombre" id="nombre" cssClass="form-control" placeholder="Nombre" required="true"/>
                    <label for="nombre">Nombre</label>
                </div>

                <div class="form-floating mb-3">
                    <s:password name="contrasenia" id="contrasenia" cssClass="form-control" placeholder="Contraseña" required="true"/>
                    <label for="contrasenia">Contraseña</label>
                </div>

                <div class="form-floating mb-3">
                    <s:textfield name="salario" id="salario" cssClass="form-control" placeholder="Salario" required="true"/>
                    <label for="salario">Salario</label>
                </div>

                <div class="form-floating mb-4">
                    <s:textfield name="rama" id="rama" cssClass="form-control" placeholder="Rama" required="true"/>
                    <label for="rama">Rama</label>
                </div>

                <s:submit value="Guardar Cambios" cssClass="btn btn-primary w-100 py-2"/>
            </s:form>

            <s:if test="mensaje != null">
                <div class="alert alert-info mt-3">
                    <i class="bi bi-info-circle-fill me-2"></i><s:property value="mensaje"/>
                </div>
            </s:if>
        </main>
    </div>

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
</body>
</html>
