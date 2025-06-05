<%-- 
    Document   : cancelarCita
    Created on : 04-jun-2025, 20:17:43
    Author     : Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Citas</title>
    </head>
    <body>
        <jsp:include page="/vistas/header.jsp" />
        <h1>Cancele la cita que desee</h1>
        <table border="1" cellspacing="1" cellspadding="2">
            <tr>
                <td>Vehiculo</td>
                <td>Fecha</td>
            </tr>
            <s:iterator value="#session.listadoCitas" id="cita">
                <tr>
                    <td><s:property value = "%{#cita.vehiculo.matricula}"/></td>
                    <td><s:property value = "%{#cita.fecha}"/></td>
                    <td>
                    <s:form method="post" action="cancelarCita">
                        <s:submit value="Eliminar"/>
                        <s:hidden name="matricula" value="%{#cita.vehiculo.matricula}"/>
                        <s:hidden name="fecha" value="%{#cita.fecha}"/>
                    </s:form></td>
                </tr>
            </s:iterator>
        </table>
    </body>
</html>
