package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

import db.MysqlConexion;
import entidades.Usuario;

public class UsuarioDAO {
	Connection con;
    PreparedStatement ps;
    ResultSet rs;
    int us;

    public Usuario Validar(int documento, String password) {
        Usuario usuario = new Usuario();      
        try {
        	con = MysqlConexion.getConexion();
        	String consulta = "SELECT * FROM tb_usuarios WHERE documento = ? AND pasword = ?";
            ps = con.prepareStatement(consulta);
            ps.setInt(1, documento);
            ps.setString(2, password);
            rs = ps.executeQuery();
            rs.next();
            do {
                usuario.setId(rs.getInt("id"));
                usuario.setDocumento(rs.getInt("documento"));
                usuario.setNombre(rs.getString("nombre"));
                usuario.setCorreo(rs.getString("correo"));
                usuario.setPassword(rs.getString("pasword"));
                usuario.setDireccion(rs.getString("direccion"));
            } while (rs.next());
        } catch (SQLException ex) {
        	ex.printStackTrace();
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);           
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
        }
        return usuario;
    }

    public int Registrar(Usuario usuario) {
       
        try {
        	con = MysqlConexion.getConexion();
        	String sentencia = "INSERT INTO tb_usuarios (documento,nombre,correo,pasword,direccion) VALUES (?,?,?,?,?)";
            ps = con.prepareStatement(sentencia);
            ps.setInt(1, usuario.getDocumento());
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getCorreo());
            ps.setString(4, usuario.getPassword());
            ps.setString(5,usuario.getDireccion());
            ps.executeUpdate();
        } catch (SQLException ex) {
        	ex.printStackTrace();
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);           
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
        }
        return us;
    }

    public Usuario ListarPorId(int id) {
        Usuario usuario = new Usuario();       
        try {
        	con = MysqlConexion.getConexion();
        	String consulta = "SELECT * FROM tb_usuarios WHERE id=" + id;
            ps = con.prepareStatement(consulta);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario.setDocumento(rs.getInt(2));
                usuario.setNombre(rs.getString(3));
                usuario.setCorreo(rs.getString(4));
                usuario.setPassword(rs.getString(5));
                usuario.setDireccion(rs.getString(6));
            }
        } catch (SQLException ex) {
        	ex.printStackTrace();
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);           
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
        }

        return usuario;

    }

    public int Actualizar(Usuario usuario) {
      
        try {
        	con = MysqlConexion.getConexion();
        	String sentencia = "UPDATE tb_usuarios set documento=?,nombre=?,correo=?,pasword=?,direccion=? WHERE id=?";
            ps = con.prepareStatement(sentencia);
            ps.setInt(1, usuario.getDocumento());
            ps.setString(2, usuario.getNombre());
            ps.setString(3, usuario.getCorreo());
            ps.setString(4, usuario.getPassword());
            ps.setString(5, usuario.getDireccion());
            ps.setInt(6, usuario.getId());
            ps.executeUpdate();

        } catch (SQLException ex) {
        	ex.printStackTrace();
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);           
		}finally {
			try {
				if(ps != null) ps.close();
				if(con != null) con.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
        }
        return us;
    }

}
