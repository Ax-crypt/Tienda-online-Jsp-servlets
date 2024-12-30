package dao;

import interfaces.CategoriaInterface;
import interfaces.ProductoInterface;
import modelo.CategoriaModel;
import modelo.ProductoModel;

public class MySQLDAOFactory extends DAOFactory{

	@Override
	public CategoriaInterface getCategoria() {
		return  new CategoriaModel();
	}

	@Override
	public ProductoInterface getProducto() {
		return new ProductoModel();
	}
}
