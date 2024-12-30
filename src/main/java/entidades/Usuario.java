package entidades;

public class Usuario {
	public int id;
    public int documento;
    public String nombre, correo,password,direccion;
    
    //Costructor
      
	public Usuario(int id, int documento, String nombre, String correo, String password, String direccion) {
		this.id = id;
		this.documento = documento;
		this.nombre = nombre;
		this.correo = correo;
		this.password = password;
		this.direccion = direccion;
		
	}
	public Usuario() {
	}
	//Metodos publicos set/get

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDocumento() {
		return documento;
	}

	public void setDocumento(int documento) {
		this.documento = documento;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getDireccion() {
		return direccion;
	}
	
	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

}
