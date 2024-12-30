<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="entidades.Producto"%>
<%@page import="modelo.ProductoModel"%>
<%@page import="dao.ProductoDAO"%>
<%@page import="db.Fecha"%>
<%@page import="java.util.List" %>
<%@page import="servlet.CestoServlet" %>
<%@page import="dao.DAOFactory"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito de compras</title>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<link rel='stylesheet' href='https://cdn-uicons.flaticon.com/2.1.0/uicons-solid-rounded/css/uicons-solid-rounded.css'>
<link href="css/styl.css" rel="stylesheet" type="text/css"/> 
<link href="css/home.css" rel="stylesheet" type="text/css"/> 
<link href="css/pagar.css" rel="stylesheet" type="text/css"/>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

</head>
<body style="background-color:gray">
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <img src="LOGO.jpg" alt="logo_compras"  height="60"  width= "60" /> 
            <a class="navbar-brand" href="#"><i>E-Home</i></a>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
                <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="home.jsp"><i class="fas fa-plus-circle"></i> Ofertas del Dia</a>
                    </li>                   
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp"><i class="fas fa-plus-circle"></i> Seguir Comprando</a>
                    </li>                  
                </ul>                                              
            </div>
        </nav>

<%	
      Producto producto = (Producto)request.getAttribute("producto");
       
	%>
<div class="container mt-4">
             <div class="d-flex">
                <h3 class="abril-fatface-regular" >CARRITO</h3> 	    
                <%
                    Fecha fechaSistema = new Fecha();
                %>                     
                <p class="ml-auto"><%= fechaSistema.Fecha()%></p>  	
			<% 
				if (session.getAttribute("cantidad") !=null) {
			%>
	 </div>
	  <div class="row">             
	     <div class="col-lg-9">  
	  <table class="table table-bordered">
			  <thead>
			    <tr>
			      <th>ID</th>
			      <th>Articulo</th>
			      <th>Precio</th>			      
			      <th>Cantidad</th>
			      <th>Total</th>
			      <th>Acciones</th>  
			    </tr>
			  </thead>
			  <tbody>
                          <tr>
                               <td><%= producto.getIdProducto()%></td>
                               <td><%= producto.getNombre()%>					    
					              <img src="img/<%= producto.getImagen()%>" width="130" height="110" alt="No se pudo mostrar :(">
					          </td>                                    
					           <td><%= producto.getPrecio()%></td>	
                              <td>   
                                 ${cantidad}
                              </td> 
                              <td>S/. ${totalPagar}</td>                                                        
                              <td class="text-center">                                         
                                  <input type="hidden" id="item2" value="<%= producto.getIdProducto()%>">
                                  <a id="deleteItem" href="#" class="btn"><i class="fas fa-trash-alt"></i></a>                                            
                              </td>                           
                          </tr>	                                                       
			  </tbody>
     </table>
						
			<% }else{ %>
			    <h2>"Aun no has seleccionado ningun producto,aunque los precios están buenos."</h2><br>
				<img src="img/errorPage.jpg" width="40%" height="60%" alt="No se pudo mostrar">
			<%} %>
		</div>

     <div class="col-lg-3">                  
              <div class="card">
                     <div class="card-header">
						  <h3>
			                <i class="fas fa-shipping-fast"></i>
			                Detalle de compra
					     </h3>
	                </div>
                     <div class="card-body">
                         <label>Subtotal:</label>
                         <a class="form-control text-center"><strong>s/. ${totalPagar}0</strong></a>
                         <label>Precio Envio:</label>
                         <a class="form-control text-center"><strong>s/. 0.00</strong></a>
                         <label>Descuento:</label>
                         <a class="form-control text-center"><strong>s/. 0.00</strong></a>
                         <label>Total a Pagar:</label>
                         <a class="form-control text-center"><strong>S/. ${totalPagar}0</strong></a>
                     </div> 
                     <ul style="list-style:none">
					    <li><a class="btn btn-success" href="#modal3">CONTINUAR</a></li>
					</ul>                    
                </div> <br>
	                    <!-- modal de pago -->


				<div id="modal3" class="modalmask">
				    <div class="modalbox resize">
			              <a href="#close" title="Close" class="close">X</a>	        
                             <h5 class="abril-fatface-regular">Paga como quieras</h5>
                             <div class="four columns">
									<div class="socailfollow">
									<a href="#" class="facebook"><img src="img/pago/amex.jpg" width="20px" height="22px" alt="" ></a> 
									<a href="#" class="x"><img src="img/pago/visa.jpg" width="20px" height="18px" alt=""></a> 
									<a href="#" class="instagram"><img src="img/pago/paypal.png"  width="20px" height="18px" alt=""></a> 
									<a href="#" class="whatsapp"><img src="img/pago/tarjeta.png" width="20px" height="18px" alt=""></a> 
									<a href="#" class="pinterest"><img src="img/pago/pagoe.jpg" width="20px" height="18px" alt=""></a> 
									<a href="#" class="youtube"><img src="img/pago/gpay.png" width="25px" height="25px" alt=""></a>
									</div>
								   </div>
                                <form action="CestoServlet">
                                <div class="card-body">
                                        <label>Numero de tarjeta</label>
                                        <input type="text" class="form-control" placeholder="9999-9999-9999-9999" required>
                                        <label>Codigo Seguridad</label>
                                        <input type="text" class="form-control" placeholder="xxx" required>
                                        <label>Monto</label>
                                        <input type="text" name="txtmonto" value=" s/. ${totalPagar}0" class="form-control h1" readonly>                                                                  
                                    <a href="confirmacion.jsp"  class="btn btn-info btn-block"><i class="fi fi-sr-shield-keyhole"></i>Pagar</a>
                                  </div>
                                </form>                
			       </div>
	        </div>	<!-- fin de modal pago-->
		                                                                
         </div>              
   </div><!-- fin de row-->
</div> <!-- fin del contenedor -->

   
<footer id="footer">
<div class="container footer-in">
	<div class="disclaimer four columns">
	<div class="copyright-txt">&nbsp; © 2024 JSHOP. Todos los derechos reservados.<br>
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
	support@jshop.com<br />
	</p>
</div><!-- end-contact2 -->
</div><!-- end-footer-in -->
<div class="footbot" >
<img src="LOGO.jpg" height="50"  width= "50" alt="">
</div><!-- end-footbot -->
</footer>	 				  

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>    
	
</body>
</html>