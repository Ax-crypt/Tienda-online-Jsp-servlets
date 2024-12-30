package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.ArrayList;

import db.MysqlConexion;
import entidades.Producto;

public class ProductoDAO {
	Connection con;
    PreparedStatement ps;
    ResultSet rs;

    public List<Producto> buscar(String nombre) {
        List<Producto> list=new ArrayList<Producto>();
        String sql = "select * from tb_productos where nombre like '%"+nombre+"%'";
        try {
            con = MysqlConexion.getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Producto p=new Producto();
                p.setIdProducto(rs.getString(1));
                p.setNombre(rs.getString(2));
                p.setImagen(rs.getString(3));
                p.setMarca(rs.getString(4));
                p.setPrecio(rs.getDouble(5));              
                list.add(p);
            }
        } catch (Exception e) {
        	 e.printStackTrace();
        }finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
        return list;
    }
  
	public List<Producto> listar() {
		 String sql = "SELECT * FROM tb_productos";
	     List<Producto> lista = new ArrayList<Producto>();		
	        try {  
	        	 con = MysqlConexion.getConexion();
	             ps = con.prepareStatement(sql);
	             rs = ps.executeQuery();
	            while (rs.next()) {
	                Producto producto = new Producto();
	                producto.setIdProducto(rs.getString("id_producto"));
	                producto.setNombre(rs.getString("nombre"));
	                producto.setImagen(rs.getString("imagen"));
	                producto.setPrecio(rs.getDouble("precio")); 
	                producto.setMarca(rs.getString("marca"));           
	                lista.add(producto);
	            }
	        } catch (Exception e) {
	        	 e.printStackTrace();
	        }finally {
    			try {
    				if(ps != null) ps.close();
    				if(con != null) con.close();
    			}catch(Exception e) {
    				e.printStackTrace();
    			}
        }
	        return lista;
	}
}
