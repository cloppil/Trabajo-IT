<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Citas</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/css/estilosCancelarCitas.css" rel="stylesheet" />
</head>
<body class="update-body d-flex align-items-center justify-content-center">
    

    <div class="update-container">
        <h1 class="h3 mb-4 fw-bold text-primary text-center">Cancele la cita que desee</h1>

        <table class="table table-striped table-bordered align-middle text-center">
            <thead class="table-light">
                <tr>
                    <th>Vehículo</th>
                    <th>Fecha</th>
                    <th>Acción</th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="#session.listadoCitas" id="cita">
                    <tr>
                        <td><s:property value="%{#cita.vehiculo.matricula}" /></td>
                        <td><s:property value="%{#cita.fecha}" /></td>
                        <td>
                            <s:form method="post" action="cancelarCita" theme="simple" cssClass="d-inline">
                                <s:hidden name="matricula" value="%{#cita.vehiculo.matricula}" />
                                <s:hidden name="fecha" value="%{#cita.fecha}" />
                                <s:submit value="Eliminar" cssClass="btn btn-danger btn-sm" />
                            </s:form>
                        </td>
                    </tr>
                </s:iterator>
            </tbody>
        </table>
    </div>

</body>
</html>
