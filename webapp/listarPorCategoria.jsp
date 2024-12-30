<%@page import="entidades.Producto"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List" %>
<%@page import="entidades.Categoria"%>
<%@page import="modelo.ProductoModel"%>
<%@page import="interfaces.CategoriaInterface"%>
<%@page import="dao.DAOFactory"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Productos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<link href="css/styl.css" rel="stylesheet" type="text/css"/> 
<link href="css/home.css" rel="stylesheet" type="text/css"/> 
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet"> 
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
                 <img src="LOGO.jpg" alt="logo_compras"  height="40"  width= "40" /> 
                 <a class="navbar-brand" href="#"><i>E-Home</i></a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">               
                    <li class="nav-item">
                        <a class="nav-link" href="carrito.jsp"><i class="fas fa-cart-plus"></i> Carrito</a>
                    </li> 
                    <li class="nav-item">
                       <a class="nav-link" href="index.jsp"><i class="fas fa-plus-circle"></i>Otros Productos</a>
                   </li> 
                </ul>
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">      
                    <input style="width:300px" class="form-control mr-sm-2" id="txtBuscar">
                    <button class="btn btn-outline-info my-2 my-sm-0" id="btnBuscar"><i class="fas fa-search"></i>Buscar</button>                     
                </ul>                                                                                                       
            </div>   
        </nav>
        
	<%	
	   List<Producto> listaProductos = (List<Producto>)request.getAttribute("lista");
	%>

	<div class="container">
		<div class="row">			
		<h2 class="abril-fatface-regular">PRODUCTOS</h2> 	
					
				<%
					int cont = 1;
					for(Producto item: listaProductos){
						if(cont%2!=0){
				%>
							<div class="col-md-4" style="text-align: center;">
							  <div class="card mb-3" style="width: 200px; border: 2px solid #e0e0e0; padding: 10px;">
								  <img class="card-img-top"  src="img/<%= item.getImagen()%>" class="img-fluid">
								  <div class="card-body">								  
									<h5 class="card-title" ><%=item.getNombre() %></h5>	
									<p class="card-text"><strong><em>s/. <%=item.getPrecio() %></em></strong></p>								
									<a href="TiendaVirtualServlet?tipo=Detalle&id=<%=item.getIdProducto() %>" class="btn btn-success">Ver detalle</a>
								  </div>
								</div>	
							</div>				
						<%} else {%>
						<div class="col-md-4" style="text-align: center;">
							  <div class="card mb-3" style="width: 200px; border: 2px solid #e0e0e0; padding: 10px;">
								  <img class="card-img-top"  src="img/<%= item.getImagen()%>" class="img-fluid">
								  <div class="card-body">								  
									<h5 class="card-title" ><%=item.getNombre() %></h5>	
									<p class="card-text"><strong><em>s/. <%=item.getPrecio() %></em></strong></p>								
									<a href="TiendaVirtualServlet?tipo=Detalle&id=<%=item.getIdProducto() %>" class="btn btn-success">Ver detalle</a>
								  </div>
								</div>	
							</div>
						<%
							}
						cont++;
					}
				%> 		
		</div>
	</div>
 <footer id="footer">
<div class="container footer-in">
	<div class="disclaimer four columns">
	<div class="copyright-txt">&nbsp; © 2024 E-HOME. Todos los derechos reservados.<br>
	<a href="#" class="terms">Terminos de Servicio</a> | <a href="#" class="terms">Poítica de privacidad</a></div>
	</div><!-- Disclaimer -->
	<div class="four columns">
	<div class="socailfollow">
	<a href="#" class="facebook"><img src="img/footer/facebook.png" width="16px" height="18px" alt="" ></a> 
	<a href="#" class="x"><img src="img/footer/x.png" width="16px" height="18px" alt=""></a> 
	<a href="#" class="instagram"><img src="img/footer/instagram.png"  width="16px" height="18px" alt=""></a> 
	<a href="#" class="whatsapp"><img src="img/footer/whatsapp.png" width="16px" height="18px" alt=""></a> 
	<a href="#" class="pinterest"><img src="img/footer/social_pinterest.png" width="16px" height="18px" alt=""></a> 
	<a href="#" class="youtube"><img src="img/footer/youtube.png" width="16px" height="18px" alt=""></a>
	</div>
</div><!-- end-follow2 -->

<div class="four columns">
	<h4 class="subtitle">síguenos</h4>
	<br />
	<div class="flickr-feed">
	<script type="text/javascript" src="http://www.flickr.com/badge_code.gne?count=12&display=random&size=square&nsid=36587311@N08&raw=1"></script>
	<div class="clear"></div>
	</div>
</div><!-- end-flickr -->

<div class="four columns">
	<h4 class="subtitle">Contactar</h4>
	<br />
	<p><img src="img/footer/social_address.png" class="alignleft"  alt="">&nbsp;<strong>Address:</strong>
	<br />
	calle los Robles 1513 - Piso 802 San Isidro, Peru</p>
	
	<p><img src="img/footer/social_phone.png" class="alignleft" alt="">&nbsp;<strong>Phone:</strong>
	<br />
	+ 1 (234) 567 8901<br />
	</p>
	
	<p><img src="img/footer/social_mail.png" class="alignleft" alt="">&nbsp;<strong>Email:</strong>
	<br />
	support@ehome.com<br />
	</p>
</div><!-- end-contact2 -->
</div><!-- end-footer-in -->
<div class="footbot" >
<img src="LOGO.jpg" height="50"  width= "50" alt="">
</div><!-- end-footbot -->
</footer>	 		
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
</body>
</html>