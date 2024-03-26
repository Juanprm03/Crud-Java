
package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;


@WebServlet(name = "SvEditar", urlPatterns = {"/SvEditar"})
public class SvEditar extends HttpServlet {
Controladora control = new Controladora();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        }
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_editar = Integer.parseInt(request.getParameter("id_usuarioEdit"));
       Usuario usu= control.traerUsuario(id_editar);
       
       HttpSession misesion= request.getSession();
       misesion.setAttribute("usuEditar",usu );
       
       response.sendRedirect("editar.jsp");
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 
        String nombre = request.getParameter("nombre");
       String apellido = request.getParameter("apellido");
       String celular = request.getParameter("celular");
       String direccion = request.getParameter("direccion");
       
       Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");
       usu.setNombre(nombre);
       usu.setApellido(apellido);
       usu.setCelular(celular);
       usu.setDireccion(direccion);
       control.editarUsuario(usu);
       response.sendRedirect("index.jsp");
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
