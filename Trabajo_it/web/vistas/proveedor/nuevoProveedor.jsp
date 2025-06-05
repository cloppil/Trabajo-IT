<%-- 
    Document   : nuevoProveedor
    Created on : 05-jun-2025, 10:29:01
    Author     : ferna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo proveedor</title>
        <s:head/>
    </head>
    <body>

        <div class="container-fluid text-center" style="height: 79vh;">
            <div class="row h-100 justify-content-center">
                <main class="form-signin col-lg-3 col-md-6 col-12 align-self-center">
                    <s:form action="registroProveedor" method="post" theme="simple">
                        <h1 class="h3 mb-3 fw-normal">Introduce los datos del proveedor</h1>
                        <div class="form-floating">
                            <label for="floatingInput">Nombre: </label><br/>
                            <s:textfield name="nombre" id="floatingInput" cssClass="form-control"/>
                            
                        </div>
                        <div class="form-floating">
                            <label for="floatingInput">Email: </label><br/>
                            <s:textfield name="email" id="floatingInput" cssClass="form-control"/>
                            
                        </div>
                        <div class="form-floating">
                            <label for="floatingInput">Direccion: </label><br/>
                            <s:textfield name="direccion" placeholder="Dirección" cssClass="form-control"/>
                                
                        </div>
                        <div class="form-floating">
                            <label for="floatingInput">Numero de telefono: </label><br/>
                            <s:textfield name="telefono" placeholder="Numero de telefono" cssClass="form-control"/>
                                
                        </div>
                        <s:submit value="Registrar" name="btnRegistrarse" cssClass="btnModificado w-100 btn mt-3"></s:submit>
                        <s:fielderror cssClass="pt-3"></s:fielderror>
                    </s:form>
                </main>

            </div>
        </div>
    </body>
</html>


