<%-- 
    Document   : bajaVehiculo
    Created on : 04-jun-2025, 14:05:32
    Author     : ferna
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Baja de Veh�culo</title>
    </head>
    <body>
        <jsp:include page="/vistas/header.jsp" />
        <h2>Baja de Veh�culo</h2>

        <s:form action="bajaVehiculo" method="post">
            <s:textfield name="matricula" label="Matr�cula" required="true" />
            <s:submit value="Dar de Baja" />
        </s:form>

        <s:actionerror />
        <s:actionmessage />
    </body>
</html>
