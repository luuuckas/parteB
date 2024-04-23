<%-- 
    Document   : reclaJSP
    Created on : 22 abr 2024, 2:59:36
    Author     : JESSY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="estilo_confireclamo.css">
</head>
<body>

<% 
    String nombre;
    String correo;
    String reclamo;

    nombre = request.getParameter("nombrereclamos");
    correo = request.getParameter("correoreclamos");
    reclamo = request.getParameter("reclamo");

%>

<center>

    <h1>Confirmación de Reclamo</h1>

    <form id="formularioreclamos"> <!-- Agregamos el ID "formularioreclamos" aquí -->
        <table>

            <tr>
                <td><h3>Tu nombre es:</h3></td>
                <td><%=nombre %></td>

            </tr>

            <tr>

                <td ><h3>Tu correo es:</h3></td>
                <td ><%=correo %></td>

            </tr>

            <tr>

                <td ><h3>Tu reclamo es:</h3></td>
                <td ><%=reclamo %></td>

            </tr>

            <tr>
                <td>
                    <input type="submit" id="enviarreclamo" value="enviar reclamo" name="enviarimagenreclamo">
                </td>
            </tr>

        </table>

    </form>

    <form id="tablaCancelarReclamos" method="POST" action="index.html">

        <table >

            <input type="submit" value="nuevo">

        </table>

    </form>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const formularioReclamos = document.getElementById("formularioreclamos");
        formularioReclamos.addEventListener("submit", function(event) {
            event.preventDefault();
            alert("Reclamo enviado correctamente");

        });
    });
</script>
</center>

</body>
</html>
