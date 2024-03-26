<%-- 
    Document   : mostrarUsuarios
    Created on : 5/03/2024, 11:57:26 p. m.
    Author     : ACER
--%>

<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista de usuarios registrados</h1>
        <%
            List<Usuario> ListaUsuarios= (List) request.getSession().getAttribute("ListaUsuarios");
            int cont =1;
            for(Usuario usu: ListaUsuarios){
        
        %>
        
                <p><b>Usuario N° <%= cont%></b></p>
                <p>Id: <%= usu.getId()%></p>
                <p><b>Nombre: <%= usu.getNombre()%></b></p>
                <p><b>Apellido: <%= usu.getApellido()%></b></p>
                <p><b>Celular: <%= usu.getCelular()%></b></p>
                <p><b>Direccion: <%= usu.getDireccion()%></b></p>
                <p>---------------------------------------------------------------------</p>
        
                <% cont = cont + 1;%>
        <% } %>
        
    </body>
</html>
