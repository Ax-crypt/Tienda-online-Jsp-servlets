package db;

import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MysqlConexion {
	public static Connection getConexion() {
	Connection con = null;
	try {
		Class.forName("com.mysql.cj.jdbc.Driver").getDeclaredConstructor().newInstance();
		String url = "jdbc:mysql://localhost:3306/ehome?useSSL=false&useTimezone=true&serverTimezone=UTC";
		String usr = "root";
		String pwd = "";
		try {
			con = DriverManager.getConnection(url, usr, pwd);
		}catch(SQLException e) {
			e.printStackTrace();
		}
	} catch (InstantiationException e) {
		e.printStackTrace();
	} catch (IllegalAccessException e) {
		e.printStackTrace();
	} catch (IllegalArgumentException e) {
		e.printStackTrace();
	} catch (InvocationTargetException e) {
		e.printStackTrace();
	} catch (NoSuchMethodException e) {
		e.printStackTrace();
	} catch (SecurityException e) {		
		e.printStackTrace();
	} catch (ClassNotFoundException e) {		
		e.printStackTrace();
	}

	return con;
  }	
}