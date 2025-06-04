<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Consultar Cliente</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="container mt-5">
            <h2 class="text-center mb-4">Datos del Cliente</h2>

            <table class="table table-bordered table-striped">
                <tr>
                    <th>DNI</th>
                    <td><s:property value="#session.cliente.dniCliente"/></td>
                </tr>
                <tr>
                    <th>Nombre</th>
                    <td><s:property value="#session.cliente.nombre"/></td>
                </tr>
                <tr>
                    <th>Teléfono</th>
                    <td><s:property value="#session.cliente.telefono"/></td>
                </tr>
                <tr>
                    <th>Email</th>
                    <td><s:property value="#session.cliente.email"/></td>
                </tr>
            </table>

            <form action="cliente.jsp" method="get" style="display:inline;">
                <button type="submit" class="btn btn-secondary">Volver al Menú</button>
            </form>

        </div>

        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
