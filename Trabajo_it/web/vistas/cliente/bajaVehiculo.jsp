<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8" />
    <title>Baja de Vehículo</title>
</head>
<body>
    <h2>Baja de Vehículo</h2>

    <s:form action="bajaVehiculo" method="post">
        <s:textfield name="matricula" label="Matrícula" required="true" />
        <s:submit value="Dar de Baja" />
    </s:form>

    <s:actionerror />
    <s:actionmessage />
</body>
</html>
