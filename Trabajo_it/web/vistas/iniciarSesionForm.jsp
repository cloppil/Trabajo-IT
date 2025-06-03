<%-- 
    Document   : iniciarSesion
    Created on : 03-jun-2025, 17:26:00
    Author     : ferna
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <s:head/>
    </head>
        <body>

        <div class="container-fluid text-center" style="height: 79vh;">
            <div class="row h-100 justify-content-center">
                <main class="form-signin col-lg-3 col-md-6 col-12 align-self-center">
                    <s:form action="iniciarSesion" method="post" theme="simple">
                        <h1 class="h3 mb-3 fw-normal">Introduce tus datos</h1>
                        <div class="form-floating">
                            <s:textfield name="dni" id="floatingInput" cssClass="form-control" placeholder="67534287B"></s:textfield>
                                <label for="floatingInput">DNI</label>
                            </div>
                            <div class="form-floating">
                            <s:password name="password" placeholder="Contraseña" cssClass="form-control"></s:password>
                                <label for="floatingInput">Contraseña</label>
                            </div>
                        <s:submit value="Ingresar" name="btnLogin" cssClass="btnModificado w-100 btn mt-3"></s:submit>
                        <s:fielderror cssClass="pt-3"></s:fielderror>
                    </s:form>
                        <p class="pt-2">No tienes cuenta? <a class="link-dark" href="<s:url action="registrarForm"/>">Registrarse</a></p>
                </main>

            </div>
        </div>
    </body>
</html>
