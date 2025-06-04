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
                    <s:form action="registroMecanico" method="post" theme="simple">
                        <h1 class="h3 mb-3 fw-normal">Introduce tus datos</h1>
                        <div class="form-floating">
                            <label for="floatingInput">Nombre: </label><br/>
                            <s:textfield name="nombre" id="floatingInput" cssClass="form-control"/>

                        </div>
                        <div class="form-floating">
                            <label for="floatingInput">Contraseña: </label><br/>
                            <s:password name="password" placeholder="Contraseña" cssClass="form-control"></s:password>

                        </div>

                        <div class="form-floating">
                            <label for="floatingInput">DNI: </label><br/>
                            <s:textfield name="dni" id="floatingInput" cssClass="form-control" placeholder="67534287B"/>

                        </div>

                        <div class="form-floating">
                            <label for="floatingInput">Salario: </label><br/>
                            <s:textfield name="salario" placeholder="Salario (1200)" cssClass="form-control"/>

                        </div>
                            
                        <div class="form-floating">
                            <label for="floatingInput">Rama: </label><br/>
                            <s:textfield name="rama" placeholder="Motor, chásis..." cssClass="form-control"/>

                        </div>
                        <s:submit value="Registrarse" name="btnRegistrarse" cssClass="btnModificado w-100 btn mt-3"></s:submit>
                        <s:fielderror cssClass="pt-3"></s:fielderror>
                    </s:form>
                </main>

            </div>
        </div>
    </body>
</html>

