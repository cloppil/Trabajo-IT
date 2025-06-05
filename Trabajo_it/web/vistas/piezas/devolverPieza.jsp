<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Devolver (Dar de Baja) Pieza</title>
    </head>
    <body>
        <h2>Devolver Pieza</h2>

        <s:form action="devolverPieza" method="post">
            <s:textfield name="idPieza" label="ID de la Pieza" required="true" />
            <s:submit value="Devolver pieza" />
        </s:form>

        <s:actionerror />
        <s:actionmessage />
    </body>
</html>
