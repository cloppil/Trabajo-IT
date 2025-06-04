<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>AutoFast</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                background-color: #f5f5f5;
            }

            .welcome-header {
                background-color: #e9f5ff;
                padding: 30px;
                margin-bottom: 40px;
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            }

            h1 {
                font-size: 2.5em;
                font-weight: bold;
                color: #333;
            }

            .panel {
                border-radius: 10px;
                box-shadow: 0 3px 8px rgba(0,0,0,0.1);
            }

            .panel-heading {
                border-radius: 10px 10px 0 0;
                font-weight: bold;
            }

            .panel-body .btn {
                margin-bottom: 12px;
                font-weight: 500;
            }

            @media (max-width: 767px) {
                h1 {
                    font-size: 1.8em;
                }
            }
        </style>
    </head>
    <body>
        <div class="container-fluid pt-3 pb-3" style="min-height: 70vh">
            <!-- Bienvenida centrada y destacada -->
            <div class="row">
                <div class="col-md-12 text-center welcome-header">
                    <h1>Bienvenido a AutoFast <s:property value="#session.cliente.nombre"/></h1>
                </div>
            </div>

            <!-- Cuatro divisiones en dos columnas -->
            <div class="row col-12 mt-5">
                <!-- Columna izquierda -->
                <div class="col-sm-6 col-md-6 text-center">
                    <!-- Gestión de Cliente -->
                    <div class="panel panel-primary">
                        <div class="panel-heading text-center">Gestión de Cliente</div>
                        <div class="panel-body">
                            <s:form action="bajaCliente">
                                <button type="submit" class="btn btn-primary btn-block">Baja Cliente</button>
                            </s:form>
                            <form action="irActualizarCliente" method="get">
                                <button type="submit" class="btn btn-primary btn-block">Actualizar Mis Datos</button>
                            </form>

                            <s:form action="">
                                <button type="submit" class="btn btn-primary btn-block">Consultar Mis Datos</button>
                            </s:form>
                        </div>
                    </div>

                    <!-- Vehículos del Cliente -->
                    <div class="col-sm-6 col-md-6 text-center">
                        <div class="panel panel-info">
                            <div class="panel-heading text-center">Vehículos del Cliente</div>
                            <div class="panel-body">
                                <s:form action="irAltaVehiculo">
                                    <button type="submit" class="btn btn-info btn-block">Alta Vehículo</button>
                                </s:form>
                                <s:form action="irBajaVehiculo">
                                    <button type="submit" class="btn btn-info btn-block">Baja Vehículo</button>
                                </s:form>
                                <s:form action="">
                                    <button type="submit" class="btn btn-info btn-block">Actualizar Vehículo</button>
                                </s:form>
                                <s:form action="">
                                    <button type="submit" class="btn btn-info btn-block">Consultar Vehículos</button>
                                </s:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <!-- Columna derecha -->
                <div class="col-sm-6 col-md-6 text-center">
                    <!-- Historial y Facturas -->
                    <div class="panel panel-success">
                        <div class="panel-heading text-center">Historial y Facturas</div>
                        <div class="panel-body">
                            <s:form action="">
                                <button type="submit" class="btn btn-success btn-block">Consultar Historial</button>
                            </s:form>
                            <s:form action="">
                                <button type="submit" class="btn btn-success btn-block">Consultar Facturas</button>
                            </s:form>
                        </div>
                    </div>

                    <!-- Gestión de Citas -->
                    <div class="col-sm-6 col-md-6 text-center">
                        <div class="panel panel-warning">
                            <div class="panel-heading text-center">Gestión de Citas</div>
                            <div class="panel-body">
                                <s:form action="">
                                    <button type="submit" class="btn btn-warning btn-block">Solicitar Cita</button>
                                </s:form>
                                <s:form action="">
                                    <button type="submit" class="btn btn-warning btn-block">Cancelar Cita</button>
                                </s:form>
                                <s:form action="">
                                    <button type="submit" class="btn btn-warning btn-block">Actualizar Cita</button>
                                </s:form>
                                <s:form action="">
                                    <button type="submit" class="btn btn-warning btn-block">Mostrar Citas</button>
                                </s:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Scripts al final -->
        <script src="bootstrap/js/bootstrap.min.js"></script>
    </body>
</html>
