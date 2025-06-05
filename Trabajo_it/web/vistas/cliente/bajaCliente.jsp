<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Baja de Cliente - AutoFast</title>

    <!-- Bootstrap CSS -->
    <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet">

    <!-- Estilos personalizados del header -->
    <link href="<s:url value='/css/header.css'/>" rel="stylesheet">

    <style>
        body {
            background-color: #f9f9f9;
        }

        .form-container {
            max-width: 500px;
            margin: 60px auto;
            padding: 30px;
            background-color: white;
            border: 1px solid #ddd;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        .form-container h2 {
            margin-bottom: 30px;
            font-weight: bold;
            color: #d9534f;
        }

        .btn-danger {
            width: 100%;
        }
    </style>
</head>
<body>

    <!-- Incluir header -->
    <jsp:include page="/vistas/header.jsp" />

    <div class="container">
        <div class="form-container text-center">
            <h2>Baja de Cliente</h2>

            <p>¿Estás seguro que deseas eliminar al cliente <strong><s:property value="#session.cliente.nombre"/></strong>?</p>

            <s:form action="bajaCliente" method="post" cssClass="form-horizontal">
                <button type="submit" class="btn btn-danger">
                    <span class="glyphicon glyphicon-trash"></span> Eliminar Cliente
                </button>
            </s:form>
        </div>
    </div>

    <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
</body>
</html>
