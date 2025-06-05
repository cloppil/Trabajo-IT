<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Facturas</title>
        <!-- Bootstrap CSS CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
        <!-- Tu CSS personalizado -->
        <link href="css/estilosVerFacturas.css" rel="stylesheet" />
    </head>
    <body>
        <div class="container my-5">
            <h1 class="mb-4 text-center">Facturas</h1>
            <table class="table table-striped table-hover table-bordered align-middle">
                <thead class="table-dark">
                    <tr>
                        <th scope="col">Importe total</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">Piezas</th>
                    </tr>
                </thead>
                <tbody>
                    <s:iterator value="listaFacturas" var="factura">
                        <tr>
                            <td><s:property value="#factura.importeTotal" /></td>
                            <td><s:property value="#factura.fecha" /></td>
                            <td>
                                <ul class="list-unstyled mb-0">
                                    <s:iterator value="listaPiezas" var="pieza">
                                        <li><s:property value="#pieza.nombrePieza" /></li>
                                        </s:iterator>
                                </ul>
                            </td>
                        </tr>
                    </s:iterator>
                </tbody>
            </table>
        </div>

        <!-- Bootstrap JS (opcional, para funcionalidades interactivas) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
