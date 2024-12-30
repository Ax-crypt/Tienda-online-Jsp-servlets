package modelo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.jdbc.CallableStatement;

import db.MysqlConexion;
import entidades.Categoria;
import interfaces.CategoriaInterface;

public class CategoriaModel implements CategoriaInterface{
	@Override
	public List<Categoria> listCategorias() {
		List<Categoria> listaCategorias = new ArrayList<Categoria>();
		Connection cn = null;
		CallableStatement cs = null;
		ResultSet rs = null;
		try {
			cn = MysqlConexion.getConexion();
			String sql = "{CALL sp_listarCategorias()}";
			cs = (CallableStatement)cn.prepareCall(sql);
			rs = cs.executeQuery();
			while(rs.next()) {
				Categoria categoria = new Categoria(rs.getString("id_categoria"), 
						                            rs.getString("categoria"), 
						                            rs.getString("imagen"));
				listaCategorias.add(categoria);
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
		return listaCategorias;
	}
}
