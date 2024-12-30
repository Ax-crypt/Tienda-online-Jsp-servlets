package interfaces;

import java.util.List;

import entidades.Producto;

public interface ProductoInterface {
	public List<Producto> listarPorCategoria(String idCategoria);
	public Producto detalleProducto(String idProducto);
}
