<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@page import="entidades.Producto"%>
<%@page import="java.util.List" %>
<%@page import="entidades.Categoria"%>
<%@page import="interfaces.CategoriaInterface"%>
<%@page import="dao.DAOFactory"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tienda de Ropa</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link href="css/card.css" rel="stylesheet" type="text/css"/> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
</head>
<body>
	<%	Producto producto = (Producto)request.getAttribute("producto");
	%>

<div class="container">
   		
		<div class="shop-card">
				<div class="title">
					<%= producto.getNombre() %>
				</div>
				 <div class="desc">
                       id Producto: <%= producto.getIdProducto() %>
                 </div>
                  <div>
                    <figure data-color="#E24938, #A30F22">                   
                     <img class="card-img-top" src="img/<%= producto.getImagen()%>" class="img-fluid"/>
                   </figure>        
                 </div>
                <div class="cta">
                  <div class="price">s/. <%= producto.getPrecio() %></div>
                </div>  
               <form action="CestoServlet" method="post">
			        <input type="number" name="cantidad" value="Cantidad" placeholder="Cantidad a adquirir" required >
			        <input type="hidden" name="idProducto" value= <%= producto.getIdProducto() %>>
			        <input type="hidden" name="nombre" value=<%= producto.getNombre() %>>
			        <input type="hidden" name="imagen" value=<%= producto.getImagen()%>>
			        <input type="hidden" name="marca" value=<%= producto.getMarca()%>>
			        <input type="hidden" name="precio" value=<%= producto.getPrecio() %>>	        
			        <!-- Botón para enviar el formulario -->
                    <br><button type="submit" class="btn btn-primary"  name="accion" value="Agregar"><i class="fas fa-cart-plus"></i>Agregar</button>
			        <a class="btn btn-success"  href="#">Ver compras</a> 
             </form><br>
             <a class="nav-link" href="index.jsp"><i class="fas fa-plus-circle"></i> Seguir Comprando</a>                    	
		</div>
 </div> 
		
		
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>