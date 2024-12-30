package servlet;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import dao.DAOFactory;
import entidades.Cesto;
import entidades.Producto;
import interfaces.ProductoInterface;

/**
 * Servlet implementation class CestoServlet
 */
@WebServlet("/CestoServlet")
public class CestoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
     	 
    public CestoServlet() {
        super();
       
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tipo = request.getParameter("accion");	
		switch(tipo) {
		case "Agregar":
			agregarCesto(request, response);break;
		default:
			request.setAttribute("mensaje", "Ocurrio un error");
			request.getRequestDispatcher("comprar.jsp").forward(request, response);
		}
	}
    
	@SuppressWarnings("unchecked")
	protected void agregarCesto(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String idProducto = request.getParameter("idProducto");
		int cantidad = Integer.valueOf(request.getParameter("cantidad"));
		String nombre = request.getParameter("nombre");
		String marca = request.getParameter("marca");
		String imagen = request.getParameter("imagen");
		double precio = Double.valueOf(request.getParameter("precio"));
 
		Cesto cesto = new Cesto();
		cesto.setIdProducto(idProducto);
		cesto.setNombre(nombre);
		cesto.setMarca(marca);
		cesto.setImagen(imagen);
		cesto.setPrecio(precio);
		cesto.setCantidad(cantidad);
		cesto.setSubTotal(precio*cantidad);
 
 
 
		SessionProject sessionProject = new SessionProject();
		sessionProject.saveSessionTimeOut(request, 30);
 
		if((ArrayList<Cesto>)request.getSession().getAttribute("tmpCesto")==null) {
			ArrayList<Cesto> miCesto = new ArrayList<Cesto>();
			miCesto.add(cesto);
			int cantidadProductos=0;
			double totalPagar=0;
			String descripcion= "";
            String marcas = "";
            String precioProd = "";
			sessionProject.saveSessionCesto(request, "tmpCesto", miCesto);
			for (Cesto car : miCesto) {
				cantidadProductos = cantidadProductos + car.getCantidad();
				totalPagar = totalPagar + car.getSubTotal();
				descripcion = descripcion + car.getNombre();
				marcas = marcas + car.getMarca();
				precioProd = precioProd + car.getPrecio();
			}
			sessionProject.saveSessionString(request, "cantidad", Integer.toString(cantidadProductos));
			sessionProject.saveSessionString(request, "totalPagar", Double.toString(totalPagar));
			sessionProject.saveSessionString(request, "nombre", descripcion);
			sessionProject.saveSessionString(request, "marca", marcas);
			sessionProject.saveSessionString(request, "precio", precioProd);
		}else {
			int cantidadProductos=0;
			double totalPagar=0;
			String descripcion= "";
			ArrayList<Cesto> cestoActivo = (ArrayList<Cesto>)request.getSession().getAttribute("tmpCesto");
			cestoActivo.add(cesto);
			for(Cesto car : cestoActivo) {
				cantidadProductos = cantidadProductos + car.getCantidad();
				totalPagar = totalPagar + car.getSubTotal();
				descripcion = descripcion + car.getNombre();
			}
			sessionProject.saveSessionString(request, "cantidadProductos", Integer.toString(cantidadProductos));
			sessionProject.saveSessionString(request, "totalPagar", Double.toString(totalPagar));
			sessionProject.saveSessionString(request, "nombre", descripcion);
		}
		/* mostrar detalle del producto en el jsp*/
		DAOFactory daoFactory = DAOFactory.getDaoFactory(DAOFactory.MYSQL);
		ProductoInterface dao = daoFactory.getProducto();
		Producto producto = dao.detalleProducto(idProducto);		
		request.setAttribute("producto", producto);
		request.getRequestDispatcher("comprar.jsp").forward(request,response);
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
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
