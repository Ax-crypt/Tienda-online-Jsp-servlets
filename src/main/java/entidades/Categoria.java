package entidades;

public class Categoria {
public String idCategoria;
public String categoria;
public String imagen;


public Categoria() {
}


public Categoria(String idCategoria, String categoria, String imagen) {
	this.idCategoria = idCategoria;
	this.categoria = categoria;
	this.imagen = imagen;
}


public String getIdCategoria() {
	return idCategoria;
}


public void setIdCategoria(String idCategoria) {
	this.idCategoria = idCategoria;
}


public String getCategoria() {
	return categoria;
}


public void setCategoria(String categoria) {
	this.categoria = categoria;
}


public String getImagen() {
	return imagen;
}


public void setImagen(String imagen) {
	this.imagen = imagen;
}


}
