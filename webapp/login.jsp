<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
<link href="css/styl.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
<!--  -->
<title>Login</title>
</head>
 <body style="background: black;">
 <section class="vh-100 bg-image"
  style="background-image: url('https://mdbcdn.b-cdn.net/img/Photos/new-templates/search-box/img4.webp');">
     	<svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
		  <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
		    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
		  </symbol>
		  <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
		    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
		  </symbol>
		  <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
		    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
		  </symbol>
		</svg>
		<%--mostramos mensaje--%> 	
     <%
				 	String exito = (String)request.getAttribute("exito");
				 	if(exito !=null){
					 	if(exito.equals("ok")){
	 				%>
						<div class="alert alert-success d-flex align-items-center alert-dismissible fade show" role="alert">
							<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Success:"><use xlink:href="#check-circle-fill"/></svg>
							<div>
							 Bienvenido!
							</div>
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>
					<%} else {%>
						<div class="alert alert-danger d-flex align-items-center alert-dismissible fade show" role="alert">
							<svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
							<div>
							 Usuario o contraseña no reconocidos.
							</div>
							<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
						</div>				
					<%} 
				 }%>
				<!-- end -->

      <div class="mask d-flex align-items-center h-100 gradient-custom-3" >	
      	<div class="container">	
         <div class="row justify-content-center">
          <div class="col-10 col-md-10 col-lg-6 col-xl-4">
           <div class="card" style="width: 18rem; background: linear-gradient(90deg, red, #7B68EE, rgb(204, 204, 255));">
                <img src="LOGO.jpg" class="card-img-top" alt="img_logo">
              <div class="card-body">
                <form method="POST" action="Validar">
                <div class="form-outline mb-2" >
                    <div class="form-outline mb-2">                                                    
					     <input type="text" class="form-control" name="txtusuario" placeholder="Dni" required>                                         
                    </div>
                    <div class="form-outline mb-2">                        
                      <input type="password" class="form-control" id="exampleInputPassword1" name="txtpassword" placeholder="Password" required>
                    </div>
                     <button type="submit" class="btn btn-primary" name="accion" value="Ingresar">Ingresar</button> 
                     <a href="Registro.jsp" target="_blank" class="btn btn-primary">Registrate</a>
                     <button class="btn submits frgt-pass"><strong><em>Reset password</em></strong></button> 
                 </div>                                                              
                </form>
            </div>
          </div>
        </div>
      </div> 
    </div> 
  </div>
    </section>
       
        <!-- jQuery -- Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>       
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>       
        <!-- -->
    </body>
</html>