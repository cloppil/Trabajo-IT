<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Mostrar Citas Pendientes</title>

        <!-- Bootstrap CSS -->
        <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet">
        <!-- CSS personalizado -->
        <link href="<s:url value='/css/estilosMostrarCitas.css'/>" rel="stylesheet">
    </head>
    <body class="update-body d-flex align-items-center justify-content-center">

        <div class="update-container w-100">
            <h2 class="mb-4 text-center text-primary fw-bold">
                Citas pendientes de <strong><s:property value="#session.cliente.nombre"/></strong>
            </h2>

            <div class="table-responsive">
                <table class="table table-bordered table-hover table-striped custom-table align-middle">
                    <thead class="table-dark">
                        <tr>
                            <th scope="col">Vehículo</th>
                            <th scope="col">Fecha</th>           
                            <th scope="col">Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="#session.listadoCitas" id="cita">
                            <tr>
                                <td><s:property value="%{#cita.vehiculo.matricula}"/></td>
                                <td><s:date name="%{#cita.fecha}" format="dd/MM/yyyy HH:mm"/></td>
                                <td>
                                    <s:form action="modificarFechaCita" method="post" cssClass="d-inline">
                                        <s:hidden name="idCita" value="%{#cita.idCita}" />
                                        <button type="submit" class="btn btn-primary btn-sm">Modificar</button>
                                    </s:form>
                                </td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </div>
        </div>

    </body>
</html>

