package entidades;

public class Cesto extends Producto{
 int cantidad;
 double subTotal;
 
public Cesto() {
}

public int getCantidad() {
	return cantidad;
}

public void setCantidad(int cantidad) {
	this.cantidad = cantidad;
}

public double getSubTotal() {
	return subTotal;
}

public void setSubTotal(double subTotal) {
	this.subTotal = subTotal;
}
 

@Override
public String toString() {
	return "Carrito [cantidad=" + cantidad + ", subTotal=" + subTotal + "]";
}
}
