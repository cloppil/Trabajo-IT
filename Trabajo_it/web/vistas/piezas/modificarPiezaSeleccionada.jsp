<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Modificar Pieza</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body class="d-flex justify-content-center align-items-center" style="min-height: 100vh; background-color: #f8f9fa;">

        <div class="container" style="max-width: 500px;">
            <h2 class="text-center mb-4">Modificar Pieza</h2>

            <s:form action="modificarPieza" method="post" cssClass="bg-white p-4 shadow rounded">

                <!-- Mostrar ID (no editable) -->
                <div class="mb-3">
                    <label class="form-label">ID de la Pieza</label>
                    <input type="text" class="form-control" value="${sessionScope.pieza.idPieza}" readonly />
                    <s:hidden name="idPieza" value="%{#session.pieza.idPieza}" />
                </div>

                <!-- Nombre editable -->
                <div class="mb-3">
                    <label for="nombrePieza" class="form-label">Nuevo Nombre</label>
                    <s:textfield name="nombrePieza" id="nombrePieza" cssClass="form-control"
                                 value="%{#session.pieza.nombrePieza}" />
                </div>

                <s:submit value="Guardar Cambios" cssClass="btn btn-primary w-100" />
            </s:form>
        </div>

    </body>
</html>
