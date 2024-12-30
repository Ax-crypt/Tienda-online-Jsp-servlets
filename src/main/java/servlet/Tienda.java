package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UsuarioDAO;
import dao.ProductoDAO;
import entidades.Usuario;

@WebServlet(name = "Tienda", urlPatterns = {"/Tienda"})
public class Tienda extends HttpServlet {

	private static final long serialVersionUID = 1L;
	Usuario usuario = new Usuario();
    UsuarioDAO usuarioDAO = new UsuarioDAO();
    int idUsuario;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String menu = request.getParameter("menu");
        String accion = request.getParameter("accion");
        
        if (menu.equals("Registro")) {
            switch (accion) {
                    
                case "Registrar":
                	
                      //se reciben los parametros del formulario
                    int documento = Integer.valueOf(request.getParameter("txtdocumento"));
                    String nombre = request.getParameter("txtnombre");
                    String correo = request.getParameter("txtcorreo");
                    String direccion = request.getParameter("txtdireccion");
                    String password = request.getParameter("txtpassword"); 
                    
                    //se asigna los valores recuperados 
                    usuario.setDocumento(documento);
                    usuario.setNombre(nombre);
                    usuario.setCorreo(correo);
                    usuario.setDireccion(direccion);
                    usuario.setPassword(password);
                    // se registra a la bas de datos
                    int resultadoRegistro = usuarioDAO.Registrar(usuario);
                    //logica para mostrar mensaje
                    if(resultadoRegistro > 0) {
                    	request.setAttribute("exito", "ok");
                    }else {
                    	request.setAttribute("exito", "fail");
                    }  
                    break;
                    
                case "Actualizar":

                    Usuario usuario1 = new Usuario();
                    int documentoUpdate = Integer.valueOf(request.getParameter("txtdocumento"));
                    String nombreUpdate = request.getParameter("txtnombre");
                    String correoUpdate = request.getParameter("txtcorreo");
                    String passwordUpdate = request.getParameter("txtpassword");                    
                    usuario1.setDocumento(documentoUpdate);
                    usuario1.setNombre(nombreUpdate);
                    usuario1.setPassword(passwordUpdate);
                    usuario1.setCorreo(correoUpdate);                   
                    usuario1.setId(idUsuario);
                    usuarioDAO.Actualizar(usuario1);
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                    break;
                    
                case "Cargar":
                    idUsuario = Integer.parseInt(request.getParameter("id"));
                    Usuario usuario = usuarioDAO.ListarPorId(idUsuario);
                    request.setAttribute("usuarioseleccionado", usuario);
                    break;

        		default:
        			request.setAttribute("mensaje", "Ocurrio un error");
     
            }

            request.getRequestDispatcher("Registro.jsp").forward(request, response);
        }
        
       
    }
    

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

    
    
}
