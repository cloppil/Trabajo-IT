<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Solicitar Nueva Pieza</title>
</head>
<body>

    <h2>Solicitar Nueva Pieza</h2>

    <s:form action="solicitarPieza" method="post">

        <!-- Selector de proveedor -->
        <s:select 
            label="Proveedor" 
            name="idProveedor" 
            list="listaProveedores" 
            listKey="idProveedor" 
            listValue="nombre" 
            headerKey="" 
            headerValue="-- Selecciona un proveedor --" />

        <!-- Selector de reparación -->
        <s:select 
            label="Reparación" 
            name="idReparacion" 
            list="listaReparaciones" 
            listKey="idReparacion" 
            listValue="comentario" 
            headerKey="" 
            headerValue="-- Selecciona una reparación --" />

        <!-- Campo de texto para el nombre de la pieza -->
        <s:textfield 
            label="Nombre de la pieza" 
            name="nombrePieza" />

        <s:submit value="Solicitar Pieza" />

    </s:form>

    <!-- Mostrar errores si los hay -->
    <s:actionerror />

</body>
</html>
