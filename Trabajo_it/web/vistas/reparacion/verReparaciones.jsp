<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Reparaciones - AutoFast</title>

    <!-- Bootstrap CSS -->
    <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet" />
    <link href="<s:url value='/css/estilosMisVehiculos.css'/>" rel="stylesheet" />
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container w-100 text-center">
        <h2 class="text-center mb-4 text-primary fw-bold">
            Reparaciones de <strong><s:property value="#session.mecanico.nombre"/></strong>
        </h2>

        <s:if test="#session.listadoReparaciones != null && !#session.listadoReparaciones.isEmpty()">
            <div class="table-responsive">
                <table class="table table-bordered table-striped shadow-sm">
                    <thead class="table-dark">
                        <tr>
                            <th>ID</th>
                            <th>Tipo</th>
                            <th>Precio</th>
                            <th>Comentario</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <s:iterator value="#session.listadoReparaciones" id="reparacion">
                            <tr>
                                <td><s:property value="%{#reparacion.idReparacion}"/></td>
                                <td><s:property value="%{#reparacion.tipo}"/></td>
                                <td><s:property value="%{#reparacion.precio}"/> €</td>
                                <td><s:property value="%{#reparacion.comentario}"/></td>
                                <td>
                                    <s:form action="eliminarReparacion" cssClass="d-inline">
                                        <s:hidden name="idReparacion" value="%{#reparacion.idReparacion}"/>
                                        <s:submit value="Eliminar" cssClass="btn btn-danger btn-sm"/>
                                    </s:form>
                                </td>
                            </tr>
                        </s:iterator>
                    </tbody>
                </table>
            </div>
        </s:if>

        <s:else>
            <div class="alert alert-warning text-center">No hay reparaciones registradas.</div>
        </s:else>
    </div>

    <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
</body>
</html>
