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
        <meta charset="UTF-8">
        <title>Iniciar Sesión</title>
        <s:head/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/css/estilosLogin.css" rel="stylesheet">
    </head>
    <body class="login-body d-flex align-items-center justify-content-center">

        <div class="login-container text-center">
            <main class="form-signin w-100 m-auto">
                <s:form action="iniciarSesion" method="post" theme="simple">
                    <h1 class="h3 mb-4 fw-bold text-primary">Inicia sesión</h1>

                    <div class="form-floating mb-3">
                        <s:textfield name="dni" id="dni" cssClass="form-control" placeholder="67534287B"/>
                        <label for="dni">DNI</label>
                    </div>

                    <div class="form-floating mb-3">
                        <s:password name="password" id="password" placeholder="Contraseña" cssClass="form-control"/>
                        <label for="password">Contraseña</label>
                    </div>

                    <s:submit value="Ingresar" name="btnLogin" cssClass="btn btn-primary w-100 py-2"/>
                    <s:fielderror cssClass="text-danger mt-3"/>
                </s:form>

                <p class="mt-3">¿No tienes cuenta? 
                    <a class="link-primary" href="<s:url action='registrarForm'/>">Regístrate aquí</a>
                </p>
            </main>
        </div>

    </body>
</html>
