<%-- 
    Document   : registrarseForm
    Created on : 04-jun-2025, 10:21:14
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrarse</title>
        <s:head/>
    </head>
    <body>

        <div class="container-fluid text-center" style="height: 79vh;">
            <div class="row h-100 justify-content-center">
                <main class="form-signin col-lg-3 col-md-6 col-12 align-self-center">
                    <s:form action="registroCliente" method="post" theme="simple">
                        <h1 class="h3 mb-3 fw-normal">Introduce tus datos</h1>
                        <div class="form-floating">
                            <s:textfield name="nombre" id="floatingInput" cssClass="form-control"/>
                            <label for="floatingInput">Nombre</label>
                        </div>
                        <div class="form-floating">
                            <s:textfield name="dni" id="floatingInput" cssClass="form-control" placeholder="67534287B"/>
                            <label for="floatingInput">DNI</label>
                        </div>
                        <div class="form-floating">
                            <s:password name="password" placeholder="Contraseña" cssClass="form-control"></s:password>
                                <label for="floatingInput">Contraseña</label>
                        </div>
                        <div class="form-floating">
                            <s:textfield name="telefono" placeholder="Numero de telefono" cssClass="form-control"/>
                                <label for="floatingInput">Numero de telefono</label>
                        </div>
                        <s:submit value="Registrarse" name="btnRegistrarse" cssClass="btnModificado w-100 btn mt-3"></s:submit>
                        <s:fielderror cssClass="pt-3"></s:fielderror>
                    </s:form>
                </main>

            </div>
        </div>
    </body>
</html>

