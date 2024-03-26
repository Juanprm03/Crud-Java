
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
    </head>
    <body>
        
        <% Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar"); %>
          <h1>Datos del Usuarios</h1>
        <form action="SvEditar" method="POST">
            <label>Nombre:</label> <input type="text" name="nombre" value="<%=usu.getNombre()%>"><br>
            <label>Apellido:</label> <input type="text" name="apellido" value="<%=usu.getApellido()%>"><br>
            <label>Celular:</label> <input type="text" name="celular"value="<%=usu.getCelular()%>"><br> 
            <label>Dirección:</label> <input type="text" name="direccion"value="<%=usu.getDireccion()%>"><br>
            <button type="submit">Guardar</button>
        </form>
    </body>
</html>
