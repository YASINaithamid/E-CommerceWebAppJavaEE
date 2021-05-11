<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="CSS_files/about-us.css">
        <script src="JS_files/about-us.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" href="Images/B.png" type="image/icon type">
        <title>Online Store - À propos</title>
    </head>
    <body>
     <!--header part start-->                
     <div class="container-fluid text-white" id="change-color">
        <div class="row" id="top-containt">
          <%@include file="Head.jsp" %>
        </div>
        <div class="container-fluid side-bar px-0">
          <div class="col-12 text-right bg-danger"> 
            <span class="close"><a href="#/" class="color">&times;</a></span>
          </div>
            <ul class="pt-5 pre-side-bar">
            </ul>
        </div>
    </div>
    <!--header part end-->

    <!--middle part start-->
    <div class="container mt-5">
        <div class="row mt-5">
            <div class="col-12 mt-5 text-center">
                <span class="header">À propos de nous</span>
            </div>
        </div>
        
        <!--main content-->
        <div class="row mt-5">
            <div class="col-xl-6 col-lg-6 col-sm-12 text-center">
                <img src="Images/about-images.jpg"  class="header-part">
            </div>
            <div class="col-xl-6 col-lg-6 col-sm-12 pt-5" style="font-weight: 600;">
                Nous aidons les gens à devenir indépendants en facilitant le démarrage, 
                la gestion et la croissance d'une entreprise. Nous pensons que l'avenir du 
                commerce a 
                plus de voix, pas moins. Nous réduisons donc les obstacles à la propriété 
                d'entreprise pour améliorer le commerce pour tous.
                Il y a plus de dix ans, nous avons ouvert un magasin pour vendre des snowboards en ligne. Aucune des solutions de commerce électronique de l'époque ne nous a donné le contrôle dont nous avions besoin pour réussir. Nous avons donc créé la nôtre. Aujourd'hui, les entreprises de toutes tailles utilisent OnlineStore, qu'elles vendent en ligne, dans les magasins de détail ou en déplacement.</span>                
            </div>
        </div>
        <!--main content-->
        
        <!--cards-->
        <div class="row mt-5 mb-5">
        </div> 
    </div>
    <!--middle part end-->

     <%@include file="footer.html" %>
      <script src="https://unpkg.com/aos@next/dist/aos.js"></script>

      <script>
            //on scroll plugin//
  AOS.init({
    once:true,
    duration:1000,
  });
  //on scroll plugin//
      </script>
    </body>
</html>