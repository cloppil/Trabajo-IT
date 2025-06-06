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
    <body class="d-flex justify-content-center align-items-center" style="min-height: 100vh; background-color: #f8f9fa;">


        <div class="container" style="max-width: 500px;">
            <h2 class="text-center mb-4">Actualizar Vehículo</h2>

            <s:form action="cambiarVehiculo" method="post" cssClass="bg-white p-4 shadow rounded">

                <!-- Mostrar matrícula (no editable) -->
                <div class="mb-3">
                    <label class="form-label">Matrícula</label>
                    <input type="text" class="form-control" value="${sessionScope.vehiculo.matricula}" readonly />
                    <!-- Enviar matrícula como campo oculto -->
                    <s:hidden name="matricula" value="%{#session.vehiculo.matricula}" />
                </div>


                <!-- Marca editable -->
                <div class="mb-3">
                    <label for="marca" class="form-label">Nueva Marca</label>
                    <s:textfield name="marca" id="marca" cssClass="form-control"
                                 value="%{#session.vehiculo.marca}" />
                </div>

                <s:submit value="Guardar Cambios" cssClass="btn btn-primary w-100" />
            </s:form>
        </div>

    </body>
</html>
