<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>Devolver (Dar de Baja) Pieza - AutoFast</title>

    <!-- Bootstrap CSS & Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet" />

    <!-- Estilos personalizados -->
    <link href="${pageContext.request.contextPath}/css/estilosFormulario.css" rel="stylesheet" />
</head>
<body class="update-body d-flex align-items-center justify-content-center">

    <div class="update-container text-center">
        <main class="form-update w-100 m-auto">
            <s:form action="devolverPieza" method="post" theme="simple">
                <h1 class="h3 mb-4 fw-bold text-primary">
                    <i class="bi bi-arrow-return-left me-2"></i>Devolver Pieza
                </h1>

                <div class="form-floating mb-4">
                    <s:textfield
                        name="idPieza"
                        id="idPieza"
                        cssClass="form-control"
                        placeholder="ID de la Pieza"
                        label="ID de la Pieza"
                        required="true"/>
                    <label for="idPieza">ID de la Pieza</label>
                </div>

                <s:submit value="Devolver pieza" cssClass="btn btn-primary w-100 py-2" />
            </s:form>

            <s:actionerror cssClass="alert alert-danger mt-3" />
            <s:actionmessage cssClass="alert alert-success mt-3" />
        </main>
    </div>

    <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
</body>
</html>
