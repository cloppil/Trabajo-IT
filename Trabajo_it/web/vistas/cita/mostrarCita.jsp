<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Mostrar Citas Pendientes</title>
        <link href="<s:url value='/css/bootstrap.min.css' />" rel="stylesheet">
        
    </head>
    <body>
        <jsp:include page="/vistas/header.jsp" />
        <div class="container text-center table-container">
            <h2 class="mb-4">Citas pendientes de <strong><s:property value="#session.cliente.nombre"/></strong></h2>

            <div class="table-responsive">
                <table class="table table-bordered table-hover custom-table mx-auto">
                    <thead>
                        <tr>
                            <th scope="col">Vehículo</th>
                            <th scope="col">Fecha</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="#session.listadoCitas" id="cita">
                            <tr>
                                <td><s:property value="%{#cita.vehiculo.matricula}"/></td>
                                <td><s:date name="%{#cita.fecha}" format="dd/MM/yyyy HH:mm"/></td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </div>

        </div>
    </body>
</html>

