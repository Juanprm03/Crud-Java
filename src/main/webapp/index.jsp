  <%-- 
    Document   : index
    Created on : 5/03/2024, 9:49:36 p. m.
    Author     : ACER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registrar Usuarios</h1>
        <form action="SvUsuarios" method="POST">
            <label>Nombre</label><br>
            <input type="text" name="nombre"><br>
            <label>Apellido</label><br>
            <input type="text" name="apellido"><br>
            <label>Celular</label><br>
            <input type="text" name="celular"><br> 
            <label>Dirección</label><br>
            <input type="text" name="direccion"><br>
            <button type="submit">Registrar</button>
        </form>
        
        <h1>Mostrar usuarios</h1>
        <form action="SvUsuarios" method="GET">
            <button type="submit">Mostrar Usuarios</button>
        </form>
        
          <h1>Eliminar usuarios</h1>
          <p>Ingresa el ID del usuario que desea eliminar</p>
        <form action="sVEliminar" method="POST">
            <label>Id:</label> <input type="text" name="id_usuario"><br>
            <button type="submit">Eliminar</button>
        </form>
          
           <h1>Editar usuarios</h1>
          <p>Ingresa el ID del usuario que desea editar</p>
        <form action="SvEditar" method="GET">
            <label>Id:</label> <input type="text" name="id_usuarioEdit"><br>
            <button type="submit">Editar Usuario</button>
        </form>
    </body>
</html>
