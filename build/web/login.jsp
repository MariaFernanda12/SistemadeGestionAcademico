<%-- 
    Document   : index
    Created on : 09-29-2017, 04:49:38 PM
    Author     : María Fernanda
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <html lang="en">
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
   <body class="main-layout">
      <!-- loader  -->
      <div class="loader_bg">
         <div class="loader"><img src="images/loading.gif" alt="#" /></div>
      </div>
      <!-- end loader -->
      <!-- header -->
      <header>
         <!-- header inner -->
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
                                 <li class="mean-last"> <a href="login.jsp"><img src="images/top-icon.png" alt="#" /></a> </li>
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
    <div class="wrapper">
        <form class="form-signin" action="accesoLogin" method="POST">
            <center><span class="fa fa-user fa-5x"></span></center>
            <input type="text" class="form-control" name="nombreUsuario" placeholder="Nombre de Usuario" required="" autofocus="" />
            <input type="password" class="form-control" name="clave" placeholder="Clave" required=""/>
            <input type="radio" name="tipo2" id="estudiante">
            <label for="estudiante">Estudiante</label>
            <input type="radio" name="tipo1" id="coordinador">
            <label for="coordinador">Coordinador</label><br>


            <button class="btn btn-lg btn-primary btn-block" type="submit" name="btnAcceder">Acceder</button>   
        </form>
    </div>

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
