<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link href="css/home.css" rel="stylesheet" type="text/css"/> 
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet"> 
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
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
                        <a class="nav-link" href="index.jsp"><i class="fas fa-plus-circle"></i>Productos</a>
                    </li>      
                    <input style="width:300px" class="form-control mr-sm-2" id="txtBuscar">
                    <button class="btn btn-outline-info my-2 my-sm-0" id="btnBuscar"><i class="fas fa-search"></i> Buscar</button>                     
                </ul>                                                                                                     
            </div>                           
   </nav>
 <!--  -->
 <div class="container">
    <div class="carrusel"> 
         <div>
         <a href="index.jsp"><img src="img/banner2.jpg" alt="Oferta 4" ></a>     
         </div> 
         <div>
         <a href="index.jsp"><img src="img/cyber.jpg" alt="Oferta 4" ></a>     
         </div>      
         <div>
         <a href="index.jsp"><img src="img/banner3.jpg" alt="Oferta 4" ></a>     
         </div>       
       </div><br> 
    <h2 >Más vendidos</h2>
    <div class="row">
      <div class="col-md-3">
        <div class="card">
          <img src="img/productos/CafeteraBlackDecker.png" class="card-img-top" alt="Producto 3">
          <div class="card-body">
            <h5 class="card-title">Cafetera Black and Decker</h5>
            <p class="card-text">Precio: S/. 118</p>
            <a href="#" class="btn btn-primary">Ver más</a>
          </div>
        </div>
      </div>
      <div class="col-md-3">
        <div class="card">
          <img src="img/productos/TvTLC.png" class="card-img-top" alt="Producto 4">
          <div class="card-body">
            <h5 class="card-title">Tv TLC 4k 50"</h5>
            <p class="card-text">Precio: S/. 789</p>
            <a href="#" class="btn btn-primary">Ver más</a>
          </div>
        </div>
      </div>
            
       <div class="col-md-3">
        <div class="card">
          <img src="img/productos/Lg_Xboom.jpeg" class="card-img-top" alt="Producto 3">
          <div class="card-body">
            <h5 class="card-title">Sonido LG Xboom</h5>
            <p class="card-text">Precio: S/. 585</p>
            <a href="#" class="btn btn-primary">Ver más</a>
          </div>
        </div>
      </div>
       <div class="col-md-3">
        <div class="card">
          <img src="img/productos/RefriHisense.png" class="card-img-top" alt="Producto 3">
          <div class="card-body">
            <h5 class="card-title">Refrigeradora Hiseense 205 L</h5>
            <p class="card-text">Precio: S/. 750</p>
            <a href="#" class="btn btn-primary">Ver más</a>
          </div>
        </div>
      </div>
      
    </div>
  </div><br>
<footer id="footer">
<div class="container footer-in">
<div class="disclaimer four columns">
<div class="copyright-txt">&nbsp; 2024 E-HOME. Todos Los Derechos Reservados.<br>
<a href="#" class="terms">Términos de Servicio</a> | <a href="#" class="terms">Poítica de privacidad</a></div>
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
<h4 class="subtitle">Síguenos</h4>
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
+ 1 (234) 567 8901<br/>
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
<script>
  const imagenes = document.querySelectorAll('.carrusel img');
  let indiceActual = 0;

  setInterval(() => {
      imagenes[indiceActual].style.display = 'none';
      indiceActual = (indiceActual + 1) % imagenes.length;
      imagenes[indiceActual].style.display = 'block';
  }, 4000); 
  </script>
</body>
</html>