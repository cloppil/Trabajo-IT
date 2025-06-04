<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <title>Solicitar Cita</title>
    <meta charset="UTF-8">
    <link href="<s:url value='/css/bootstrap.min.css' />" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        body {
            background: #f0f4f8;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .card {
            max-width: 600px;
            margin: 50px auto;
            box-shadow: 0 4px 20px rgba(0,0,0,0.1);
            border-radius: 16px;
        }
        .card-header {
            background-color: #0d6efd;
            color: white;
            font-size: 1.5rem;
            text-align: center;
            border-top-left-radius: 16px;
            border-top-right-radius: 16px;
            padding: 20px;
        }
        .form-label {
            font-weight: bold;
        }
        .form-select, .form-control {
            margin-bottom: 15px;
        }
        .emoji {
            font-size: 1.8rem;
            margin-right: 10px;
        }
        .submit-btn {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="card">
        <div class="card-header">
            <span class="emoji">💌</span> Solicita tu Cita
        </div>
        <div class="card-body">
            <s:form action="solicitarCita" method="post" cssClass="needs-validation" novalidate="true">
                
                <div class="mb-3">
                    <label class="form-label"><i class="bi bi-car-front"></i> Vehículo</label>
                    <s:select name="vehiculoSeleccionado"
                              list="#session.listaVehiculos"
                              listKey="matricula"
                              listValue="matricula"
                              headerKey=""
                              headerValue="Elige un vehículo"
                              cssClass="form-select"/>
                </div>

                <div class="mb-3">
                    <label class="form-label"><i class="bi bi-person-badge"></i> Mecánico</label>
                    <s:select name="mecanicoSeleccionado"
                              list="#session.listaMecanicos"
                              listKey="dniMecanico"
                              listValue="nombre"
                              headerKey=""
                              headerValue="Selecciona un mecánico"
                              cssClass="form-select"/>
                </div>

                <div class="mb-3">
                    <label class="form-label"><i class="bi bi-calendar-event"></i> Fecha (dd-mm-aaaa)</label>
                    <s:textfield name="fecha"
                                 cssClass="form-control"
                                 placeholder="Ej: 04/06/2025"
                                 required="true"/>
                </div>

                <div class="submit-btn">
                    <s:submit value="📅 Solicitar Cita" cssClass="btn btn-primary btn-lg"/>
                </div>

            </s:form>
        </div>
    </div>

</body>
</html>
