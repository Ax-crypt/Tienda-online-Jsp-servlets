package dao;

import interfaces.CategoriaInterface;
import interfaces.ProductoInterface;

public abstract class DAOFactory {

		public static final int MYSQL = 1;
		public static final int SQLSERVER =2;
		public static final int ORACLE = 3;	

		public abstract CategoriaInterface getCategoria();
		public abstract ProductoInterface getProducto();
		public static DAOFactory getDaoFactory(int tipo) {

			switch(tipo) {
			case MYSQL:
				return new MySQLDAOFactory();
			case SQLSERVER:
				return null;
			case ORACLE:
				return null;
			default:
				return null;
			}
		}
	}
