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
        <jsp:include page="/vistas/header.jsp" />
        <div class="container py-5">
            <div class="text-center welcome-box mb-5">
                <h1 class="fw-bold text-primary">Menú mecánico <s:property value="#session.mecanico.nombre"/></h1>
            </div>

            <div class="row g-4">
                <!-- Gestión de Mecanico -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-sm">
                        <div class="card-header bg-primary text-white text-center">Gestión de Mecanico</div>
                        <div class="card-body d-grid gap-2">
                            <s:form action="irBajaMecanico">
                                <button type="submit" class="btn btn-outline-primary btn-block">Baja Mecánico</button>
                            </s:form>
                            <s:form action="irActualizarMecanico">
                                <button type="submit" class="btn btn-outline-primary btn-block">Actualizar Mis Datos de Mecánico</button>
                            </s:form>
                            <s:form action="irConsultarMecanico">
                                <button type="submit" class="btn btn-outline-primary btn-block">Consultar Mis Datos de Mecánico</button>
                            </s:form>
                        </div>
                    </div>
                </div>

                <!-- Reparaciones -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-sm">
                        <div class="card-header bg-info text-white text-center">Reparaciones</div>
                        <div class="card-body d-grid gap-2">
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-info btn-block">Alta Reparación</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-info btn-block">Eliminar Reparación</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-info btn-block">Modificar Reparación</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-outline-info btn-block">Ver Reparaciones</button>
                            </s:form>
                        </div>
                    </div>
                </div>

                <!-- Facturas -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-sm">
                        <div class="card-header bg-success text-white text-center">Facturas</div>
                        <div class="card-body d-grid gap-2">
                            <s:form action="irConsultarFacturasMecanico">
                                <button type="submit" class="btn btn-outline-success btn-block">Consultar Facturas</button>
                            </s:form>
                        </div>
                    </div>
                </div>

                <!-- Gestión de Piezas -->
                <div class="col-md-6">
                    <div class="card h-100 shadow-sm">
                        <div class="card-header bg-warning text-dark text-center">Gestión de piezas</div>
                        <div class="card-body d-grid gap-2">
                            <s:form action="irSolicitarPieza">
                                <button type="submit" class="btn btn-outline-secondary btn-block">Solicitar Pieza</button>
                            </s:form>
                            <s:form action="irDevolverPieza">
                                <button type="submit" class="btn btn-outline-secondary btn-block">Devolver Pieza</button>
                            </s:form>
                            <s:form action="irModificarPieza">
                                <button type="submit" class="btn btn-outline-secondary btn-block">Modificar Pieza</button>
                            </s:form>
                            <s:form action="irConsultarPiezas">
                                <button type="submit" class="btn btn-outline-secondary btn-block">Mostrar Piezas disponibles</button>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Gestión de Proveedores -->
            <div class="col-md-6">
                <div class="card h-100 shadow-sm">
                    <div class="card-header bg-warning text-white text-center">Gestión de Proveedores</div>
                    <div class="card-body d-grid gap-2">
                        <s:form action="nuevoProveedor">
                            <button type="submit" class="btn btn-outline-secondary btn-block">Alta Proveedor</button>
                        </s:form>
                        <s:form action="irBorrarProveedor">
                            <button type="submit" class="btn btn-outline-secondary btn-block">Baja Proveedor</button>
                        </s:form>
                        <s:form action="irMostrarProveedores">
                            <button type="submit" class="btn btn-outline-secondary btn-block">Mostrar Proveedores</button>
                        </s:form>
                    </div>
                </div>
            </div>

        </div>

        <script src="<s:url value='/js/bootstrap.bundle.min.js'/>" defer></script>
    </body>
</html>

