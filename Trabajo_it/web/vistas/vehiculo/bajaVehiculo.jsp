<%-- 
    Document   : bajaVehiculo
    Created on : 04-jun-2025, 14:05:32
    Author     : ferna
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <title>Baja de Vehículo</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <link href="${pageContext.request.contextPath}/css/bajaVehiculo.css" rel="stylesheet" />
    </head>
    <body class="baja-body d-flex align-items-center justify-content-center">

        <div class="baja-container text-center">
            <main class="form-baja w-100 m-auto">
                <h1 class="h3 mb-4 fw-bold text-danger">Baja de Vehículo</h1>

                <s:form action="bajaVehiculo" method="post" theme="simple" cssClass="needs-validation">

                    <div class="mb-3 text-start">
                        <label for="matricula" class="form-label">Matrícula</label>
                        <s:textfield name="matricula" id="matricula" cssClass="form-control" required="true" />
                    </div>

                    <s:submit value="Dar de Baja" cssClass="btn btn-danger w-100 py-2" />
                </s:form>

                <s:actionerror cssClass="alert alert-danger mt-3" />
                <s:actionmessage cssClass="alert alert-success mt-3" />
            </main>
        </div>

    </body>
</html>

