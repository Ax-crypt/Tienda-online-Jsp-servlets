package entidades;

public class Producto {
	private String idProducto;
	private String nombre;
	private String imagen;
	private String idCategoria;
	private String marca;
	private double precio;
	private int cantidad;
	
	public Producto() {
	}


	public Producto(String nombre, String imagen, String marca, double precio, int cantidad) {
		this.nombre = nombre;
		this.imagen = imagen;
		this.marca = marca;
		this.precio = precio;
		this.cantidad = cantidad;
	}


	public Producto(String idProducto, String nombre, String imagen, String idCategoria, double precio, String marca) {
		this.idProducto = idProducto;
		this.nombre = nombre;
		this.imagen = imagen;
		this.idCategoria = idCategoria;
		this.precio = precio;
		this.marca = marca;
	}

	public int getCantidad() {
		return cantidad;
	}


	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}


	public String getIdProducto() {
		return idProducto;
	}


	public void setIdProducto(String idProducto) {
		this.idProducto = idProducto;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	public String getImagen() {
		return imagen;
	}


	public void setImagen(String imagen) {
		this.imagen = imagen;
	}


	public String getIdCategoria() {
		return idCategoria;
	}


	public void setIdCategoria(String idCategoria) {
		this.idCategoria = idCategoria;
	}


	public double getPrecio() {
		return precio;
	}


	public void setPrecio(double precio) {
		this.precio = precio;
	}
	
	public String getMarca() {
		return marca;
	}
	
	public void setMarca(String marca) {
		this.marca = marca;
	}
}
