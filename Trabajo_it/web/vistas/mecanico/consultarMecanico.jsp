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
                    <td><s:property value="#session.mecanico.dniMecanico"/></td>
                </tr>
                <tr>
                    <th>Nombre</th>
                    <td><s:property value="#session.mecanico.nombre"/></td>
                </tr>
                <tr>
                    <th>Salario</th>
                    <td><s:property value="#session.mecanico.salario"/></td>
                </tr>
                <tr>
                    <th>Rama</th>
                    <td><s:property value="#session.mecanico.rama"/></td>
                </tr>
            </table>


        </div>

        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
