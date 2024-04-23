<%-- 
    Document   : sugeJSP
    Created on : 22 abr 2024, 3:47:27
    Author     : JESSY
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilo_confirsuge.css">
    </head>
    <body>
        
        <% 
            String nombre;
            String correo;
            String sugerencia;
        
            nombre = request.getParameter("nombresugerencias");
            correo = request.getParameter("correosugerencias");
            sugerencia = request.getParameter("sugerencia");
        
        %>

    <center>
<form id="formulariosugerencias"> <!-- Agregamos el ID "formularioreclamos" aquí -->
        <h1>Confirmación de Sugerencia</h1>

        <form>
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

                    <td ><h3>Tu sugerencia es:</h3></td>
                    <td ><%=sugerencia %></td>

                </tr>

                <tr>
                    <td>
                        <input type="submit" id="enviarsugerencia" value="enviar sugerencia" name="enviarimagensugerencia">
                    </td>
                </tr>

            </table>

        </form>

        <form id="tablaCancelarSugerencia" method="POST" action="index.html">

            <table >

                <input type="submit" value="nuevo">

            </table>

        </form>
                    
<script>
    document.addEventListener("DOMContentLoaded", function() {
        const formularioReclamos = document.getElementById("formulariosugerencias");
        formularioReclamos.addEventListener("submit", function(event) {
            event.preventDefault();
            alert("Reclamo enviado correctamente");

        });
    });
</script>       
</center>         
                    
    </body>
</html>
