package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.CallableStatement;

import db.MysqlConexion;
import entidades.Producto;
import interfaces.ProductoInterface;

public class ProductoModel implements ProductoInterface{
	@Override
	public List<Producto> listarPorCategoria(String idCategoria) {
		List<Producto> listaProductos = new ArrayList<Producto>();
		Connection cn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		try {
			cn = MysqlConexion.getConexion();
			String sql = "{CALL sp_listarPorCategoria(?)}";
			cs = (CallableStatement)cn.prepareCall(sql);
			cs.setString(1, idCategoria);
			rs = cs.executeQuery();
			while(rs.next()) {
				Producto producto = new Producto(rs.getString("id_producto"), 
						             rs.getString("nombre"), 						             
						             rs.getString("imagen"), 
						             rs.getString("id_categoria"), 
						             rs.getDouble("precio"), 
						             rs.getString("marca"));
				listaProductos.add(producto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null) rs.close();
				if(cs != null) cs.close();
				if(cn != null) cn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return listaProductos;
	}

	@Override
	public Producto detalleProducto(String idProducto) {
		Producto producto = new Producto();
		Connection cn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		try {
			cn = MysqlConexion.getConexion();
			String sql = "{CALL sp_buscarProducto(?)}";
			cs = (CallableStatement)cn.prepareCall(sql);
			cs.setString(1, idProducto);
			rs = cs.executeQuery();
			rs.next();
			producto.setIdProducto(rs.getString("id_producto"));
			producto.setNombre(rs.getString("nombre"));
			producto.setImagen(rs.getString("imagen"));
			producto.setIdCategoria(rs.getString("id_categoria"));
			producto.setPrecio(rs.getDouble("precio"));
			producto.setMarca(rs.getString("marca"));
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs !=null) rs.close();
				if(cs != null) cs.close();
				if(cn != null) cn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return producto;
	}
}
