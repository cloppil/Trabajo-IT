<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Actualizar Cliente</title>
    <s:head/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/estilosActualizarCliente.css" rel="stylesheet">
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container text-center">
        <main class="form-update w-100 m-auto">
            <s:form action="actualizarCliente" method="post" theme="simple">
                <h1 class="h3 mb-4 fw-bold text-primary">
                    <i class="bi bi-pencil-square me-2"></i>Actualizar Cliente
                </h1>

                <!-- DNI solo lectura -->
                <p class="text-muted mb-2">DNI: <strong><s:property value="#session.cliente.dniCliente"/></strong></p>
                <s:hidden name="dniCliente" />

                <!-- Email solo lectura arriba, igual que DNI -->
                <p class="text-muted mb-4">Email: <strong><s:property value="#session.cliente.email"/></strong></p>

                <div class="form-floating mb-3">
                    <s:textfield name="nombre" id="nombre" cssClass="form-control" placeholder="Nombre" required="true"/>
                    <label for="nombre">Nombre</label>
                </div>

                <!-- Eliminado campo email editable -->

                <div class="form-floating mb-3">
                    <s:password name="contrasenia" id="contrasenia" cssClass="form-control" placeholder="Contraseña" required="true"/>
                    <label for="contrasenia">Contraseña</label>
                </div>

                <div class="form-floating mb-4">
                    <s:textfield name="telefono" id="telefono" cssClass="form-control" placeholder="Teléfono" required="true"/>
                    <label for="telefono">Teléfono</label>
                </div>

                <s:submit value="Guardar Cambios" cssClass="btn btn-primary w-100 py-2"/>
            </s:form>
            <s:fielderror cssClass="pt-3 text-danger text-center" />
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
