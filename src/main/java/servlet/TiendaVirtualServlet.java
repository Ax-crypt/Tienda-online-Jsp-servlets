package servlet;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.DAOFactory;
import entidades.Producto;
import interfaces.ProductoInterface;

/**
 * Servlet implementation class TiendaVirtualServlet
 */
@WebServlet(name = "TiendaVirtualServlet", urlPatterns = {"/TiendaVirtualServlet"})
public class TiendaVirtualServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TiendaVirtualServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tipo = request.getParameter("tipo");		
		switch(tipo) {
		case "Categoria":
			listarPorCategoria(request, response);break;
		case "Detalle":
			detalleProducto(request, response);break;
		default:
			request.setAttribute("mensaje", "Ocurrio un error");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}
 
	protected void listarPorCategoria(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idCategoria = request.getParameter("idCategoria");
		DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
		ProductoInterface dao =daoFactory.getProducto();
		List<Producto> lista = dao.listarPorCategoria(idCategoria);
		request.setAttribute("lista", lista);
		request.getRequestDispatcher("listarPorCategoria.jsp").forward(request, response);
	}
 
	protected void detalleProducto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idProducto = request.getParameter("id");
		DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
		ProductoInterface dao =daoFactory.getProducto();
		Producto producto = dao.detalleProducto(idProducto);		
		request.setAttribute("producto", producto);
		request.getRequestDispatcher("detalleProducto.jsp").forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
