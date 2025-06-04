<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>AutoFast</title>

        <!-- Bootstrap CSS -->
        <link href="<s:url value='/css/bootstrap.min.css'/>" rel="stylesheet">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;600&display=swap" rel="stylesheet">

        <!-- Estilos personalizados -->
        <link href="<s:url value='/css/clienteDashboard.css'/>" rel="stylesheet">
    </head>
    <body class="bg-light">
        <div class="container py-5">
            <div class="text-center welcome-box mb-5">
                <h1 class="fw-bold text-primary">Bienvenido a AutoFast <s:property value="#session.cliente.nombre"/></h1>
            </div>

            <div class="row g-4">
                <!-- Gestión de Cliente -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-sm">
                        <div class="card-header bg-primary text-white text-center">Gestión de Cliente</div>
                        <div class="card-body d-grid gap-2">
                            <s:form action="irBajaCliente">
                                <button type="submit" class="btn btn-outline-primary">Baja Cliente</button>
                            </s:form>
                            <s:form action="irActualizarCliente">
                                <button type="submit" class="btn btn-outline-primary">Actualizar Mis Datos</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-primary">Consultar Mis Datos</button>
                            </s:form>
                        </div>
                    </div>
                </div>

                <!-- Vehículos del Cliente -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-sm">
                        <div class="card-header bg-info text-white text-center">Vehículos del Cliente</div>
                        <div class="card-body d-grid gap-2">
                            <s:form action="irAltaVehiculo">
                                <button type="submit" class="btn btn-outline-info">Alta Vehículo</button>
                            </s:form>
                            <s:form action="irBajaVehiculo">
                                <button type="submit" class="btn btn-outline-info">Baja Vehículo</button>
                            </s:form>
                            <s:form action="irActualizarVehiculo">
                                <button type="submit" class="btn btn-outline-info">Actualizar Vehículo</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-info">Consultar Vehículos</button>
                            </s:form>
                        </div>
                    </div>
                </div>

                <!-- Historial y Facturas -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-sm">
                        <div class="card-header bg-success text-white text-center">Historial y Facturas</div>
                        <div class="card-body d-grid gap-2">
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-success">Consultar Historial</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-success">Consultar Facturas</button>
                            </s:form>
                        </div>
                    </div>
                </div>

                <!-- Gestión de Citas -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-sm">
                        <div class="card-header bg-warning text-dark text-center">Gestión de Citas</div>
                        <div class="card-body d-grid gap-2">
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-warning">Solicitar Cita</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-warning">Cancelar Cita</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-warning">Actualizar Cita</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-warning">Mostrar Citas</button>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
    </body>
</html>
