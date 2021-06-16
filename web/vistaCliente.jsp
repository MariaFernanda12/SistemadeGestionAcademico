<%-- 
    Document   : vistaCliente
    Created on : 16-06-2021, 04:53:50 PM
    Author     : María Fernanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
      <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>UD</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- bootstrap css -->
      <link rel="stylesheet" href="css/bootstrap.min.css">
      <!-- style css -->
      <link rel="stylesheet" href="css/style.css">
      <!-- Responsive-->
      <link rel="stylesheet" href="css/responsive.css">
      <!-- fevicon -->
      <link rel="icon" href="images/fevicon.png" type="image/gif" />
      <!-- Scrollbar Custom CSS -->
      <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
      <!-- Tweaks for older IEs-->
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
   </head>
    
    
    
    
        <%
            String user = "";
            String admin = "";
            HttpSession objSesion = request.getSession();
            String usuario;
            if (objSesion.getAttribute("usuario") != null && objSesion.getAttribute("nivel") == "Cliente") {
                usuario = objSesion.getAttribute("usuario").toString();
                user = "<label>" + usuario + "</label>";
            } else if (objSesion.getAttribute("usuario") != null && objSesion.getAttribute("nivel") == "Administrador") {
                usuario = objSesion.getAttribute("usuario").toString();
                user = "<label>" + usuario + "</label>";
                admin = "<label>El administrador tiene acceso total a todo <br><a href='vistaAdmin.jsp' class='btn btn-primary'><span class='fa fa-eye'></span> Vista administrador</a></label>";
            } else {
                out.print("<script>location.replace('index.html');</script>");
            }
        %>
    <body class="main-layout">
        
        
        <header>
      <div class="header">
            <div class="container">
               <div class="row">
                  <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                     <div class="full">
                        <div class="center-desk">
                           <div class="logo"> <a href="index.html"><img src="images/escudo.png" alt="#"></a> </div>
                        </div>
                     </div>
                  </div>
                  <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <div class="menu-area">
                        <div class="limit-box">
                           <nav class="main-menu">
                             <ul class="menu-area-main">
                                 <li class="active"> <a href="index.html">inicio</a> </li>
                                 <li> <a href="about.html">Nosotros</a> </li>
                                 <li><a href="schedule2.html">Horario</a></li>
                                 <li><a href="curriculum2.html">Plan académico</a></li>
                                 <li><a href="contact2.html">Contacto</a></li>
                                 <li class="mean-last"> <a href="#"><img src="images/search_icon.png" alt="#" /></a> </li>
                                 
                              </ul>
                           </nav>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         </div>
         <!-- end header inner -->
      </header>   
        
        
        
     <br>   
     <br>
     <br>
     <br>
     <br>
     <br>
     <br>
    <center><h1>Bienvenido</h1>
        <% out.print(admin); %>
        <h1>Bienvenido <% out.print(user);%></h1>
        <a href="index.html" class="btn btn-danger"><span class="fa fa-sign-out"></span> Cerrar sesion</a>
         <br>
         <br>
         <br>
    </center> 
      <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                     <div class="menu-area">
                        <div class="limit-box">
                           <nav class="main-menu">
                             <ul class="menu-area-main">
                                 <li class="active"> <a href="inscribir.jsp">Inscrbit</a> </li>
                                 <li class="active"> <a href="">Semestre académico</a> </li>
                                 <li class="active"><a href="">Materias inscritas</a></li>
                                 <li class="active"><a href="">Calendario académico</a></li>
                                 <li class="mean-last"> <a href="#"><img src="images/search_icon.png" alt="#" /></a> </li>
                                 
                              </ul>
                           </nav>
                        </div>
                     </div>
                  </div>
         <br>   
     <br>
     <br>
     <br>
     <br>
     <br>
     <br>
        
          <footer>
         <div class="footer">
            <div class="container">
               <div class="row pdn-top-30">
                  <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                     <div class="Follow">
                        <h3>Follow Us</h3>
                     </div>
                     <ul class="location_icon">
                        <li> <a href="#"><img src="icon/facebook.png"></a></li>
                        <li> <a href="#"><img src="icon/Twitter.png"></a></li>
                        <li> <a href="#"><img src="icon/linkedin.png"></a></li>
                        <li> <a href="#"><img src="icon/instagram.png"></a></li>
                     </ul>
                  </div>
                  <div class="col-xl-8 col-lg-8 col-md-8 col-sm-12">
                     <div class="Follow">
                     </div>
                     <input class="Newsletter" placeholder="Enter your email" type="Enter your email">
                     <button class="Subscribe">Subscribe</button>
                  </div>
               </div>
            </div>
         </div>
         <div class="copyright">
            <div class="container">
               <p>Copyright 2019 All Right Reserved By María Fernanda Martínez Garzón y Martha Patricia Valbuena</p>
            </div>
         </div>
      </footer>
      <!-- end footer -->
      <!-- Javascript files-->
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.bundle.min.js"></script>
      <script src="js/jquery-3.0.0.min.js"></script>
      <script src="js/plugin.js"></script>
      <!-- sidebar -->
      <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
      <script src="js/custom.js"></script>
    </body>
</html>
