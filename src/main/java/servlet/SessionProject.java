package servlet;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import entidades.Cesto;

public class SessionProject {
	public void saveSessionString(HttpServletRequest request, String key, String value){
		HttpSession session = request.getSession();
		session.setAttribute(key, value);	
	}
	public void saveSessionTimeOut(HttpServletRequest request, int time){
		HttpSession session = request.getSession();
		session.setMaxInactiveInterval(time);
	}
	public void invalidateSession(HttpServletRequest request) {
		request.getSession().invalidate();
	}
	public void saveSessionCesto(HttpServletRequest request, String key, List<Cesto> listaCarrito){
		HttpSession session = request.getSession();
		session.setAttribute(key, listaCarrito);	
	}
}
