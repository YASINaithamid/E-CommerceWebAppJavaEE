<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% session.invalidate(); %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="CSS_files/ecommerce.css">
        <script src="JS_files/ecommerce.js"></script>
        <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" href="Images/B.png" type="image/icon type">
        <title>Online Store</title>
    </head>
    <body>
        <div class="carousel slide" data-ride="carousel" style="z-index:1">
            <div class="container-fluid text-white" id="change-color">
              <div class="row" id="top-containt">
				<%@include file="Head.jsp" %>
              </div>
              <div class="container-fluid side-bar px-0">
              <div class="col-12 text-right bg-danger"> 
                  <span class="close"><a href="#/" class="color">&times;</a></span>
                </div> 
              </div>
            </div>
            <div class="carousel-inner text-center ">
              <div class="carousel-item" style="height:100vh"> 
                <div style="height:100vh;width:100vw" class="text-right pr-5">
                  <div class="container pt-4">
                    <div class="row mt-3 pt-5">
                      <div class="col-12 text-center pt-5">
                        <a href="Produits.jsp"><span class="box"><img src="Images/sale-box.jpg" height="320px"  style="transform: translateY(10%);"></span></a>
                        <a href="Produits.jsp"><img src="Images/sale-1..png" height="300px" class="sale-img"></a>
                      </div>
                    </div>
                  </div>
                </div>
              </div> 
              <div class="carousel-item  active" style="height:100vh">
                  <div class="container mt-4 pt-5">
                    <div class="row pt-5 pb-5">
                      <div class="col-12 text-center pb-4">
                        <a href="Produits.jsp"><span class="hide-banner"><img src="Images/ballon.jpg" height="350px;"></span></a>
                        <a href="Produits.jsp"><img src="Images/background-image-2.jpg" height="320px"></a>
                      </div>
                    </div>
                  </div>
              </div>
          </div>
        </div>
          <div class='container-fluid pb-3'>
            <div class="row">
              <div class="col text-center">
                <a href="ecommerce-price-men.html"><span style="font-size:30px;text-transform:uppercase;font-weight:bold" data-aos="zoom-in">popular</span></a>
              </div>
            </div>
          </div>
          <div class="container-fluid pt-5" style="background-color:white">
            <div class="container"> 
              <div class="row text-center">
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
                <% String q="Images/girl.jpg"; %>
                  <div class="container pl-0" height="250px" width="250px" style="overflow:hidden">
                    <a href="ecommerce-price-men.html"><img src=<%=q %> class="img-men" data-aos="fade-up" style="border-radius:20px;"><br></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="fade-up">afordable & tradesional dress<br>$101.00</span></a>
                  </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 text-center popular-sift-down">
                  <div class="container pl-0" height="250px" width="250px" style="overflow:hidden">
                    <a href="ecommerce-price-men.html"><img src="Images/kids.jpg" class="img-men" style="border-radius:20px;" data-aos="fade-up"><br></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="fade-up" >toddler children's dress<br>$203.00</span></a>
                  </div>
                </div>
                <div class="col-xl-3 col-lg-4 hide-lady-1">
                  <div class="container pl-0 text-center" height="250px" width="250px" style="overflow:hidden">
                    <a href="ecommerce-price-men.html"><img src="Images/blazers.jpg" class="img-men" style="border-radius:20px;" data-aos="fade-up"></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="fade-up">men's black sweatshirt<br>$60.00</span></a>
                  </div>
                </div>
                <div class="col-xl-3 hide-lady">
                  <div class="container pl-0 text-center" height="250px" width="250px" style="overflow:hidden">
                    <a href="ecommerce-price-men.html"><img src="Images/boys-kids.jpg" class="img-men" style="border-radius:20px;" data-aos="fade-up"></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable pl-3" data-aos="fade-up">boys flower print shirt<br>$320.00</span></a>
                  </div>
                </div>
              </div>
              <div class="row pt-5 pb-4 text-center">
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 text-center">
                  <div class="container pl-0" height="250px" width="250px" style="overflow:hidden">
                    <a href="ecommerce-price-men.html"><img src="Images/boys-kids-1.jpg" class="img-men" style="border-radius:20px;" data-aos="fade-up"><br></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="fade-up">formal toxedo dress suits<br>$117.00</span></a>
                  </div>
                </div>
                <div class="col-xl-3 col-lg-4 col-md-6 col-sm-6 col-12 text-center popular-sift-down">
                    <div class="container pl-0" height="250px" width="250px" style="overflow:hidden">
                    <a href="ecommerce-price-men.html"><img src="Images/girl (2).jpg" class="img-men" style="border-radius:20px;" data-aos="fade-up"><br></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="fade-up">girls flower print skirt<br>$400.00</span></a>
                  </div>
                </div>
                <div class="col-xl-3 col-lg-4 text-center hide-lady-1">
                  <div class="container pl-0" height="250px" width="250px" style="overflow:hidden">
                    <a href="ecommerce-price-men.html"><img src="Images/men.jpg" class="img-men" style="border-radius:20px;" data-aos="fade-up"></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="fade-up">plain pink cotton saree<br>$400.00</span></a>
                  </div>
                </div>
                <div class="col-xl-3 text-center hide-lady">
                  <div class="container pl-0" height="250px" width="250px" style="overflow:hidden">
                    <a href="ecommerce-price-men.html"><img src="Images/men-1.jpg" class="img-men" style="border-radius:20px;" data-aos="fade-up"></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="fade-up">accessories & tradesional dress<br>$117.00</span></a>
                  </div>
                </div>
              </div>
              <div class="row mb-1 pb-3">
                <div class="col-12 pb-5 text-center">
                  <a href="Produits.jsp"><span style="font-weight:700;font-size:20px;color:blue" data-aos="zoom-in">see more</span><span class="pl-3" style="color:blue"><i class="fa fa-arrow-right" aria-hidden="true" data-aos="zoom-in"></i></span></a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="container-fluid mt-5">
           <div class="container pt-3 pb-3">
             <div class="row">
              <div class="col-sm-12 text-center pb-4 pt-4">
                <a href="Produits.jsp"><span style="text-transform: uppercase;font-weight: 700;font-size:30px;" data-aos="zoom-in">men's dress</span></a>
              </div>
             </div>
            <div class="row pt-1">
              <div class="col-xl-5 col-lg-5 text-center pt-5 hide-popular">
                <a href="ecommerce-price-men.html"><img src="Images/mens-dress.jpg" height="400px" data-aos="fade-up"><br></a>
                <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
              </div>
              <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12">
                <div class="row">
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                    <a href="ecommerce-price-men.html"><img src="Images/mens-dress-1.jpg" height="200px" data-aos="fade-up"><br></a>
                <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
                  </div>
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                    <a href="ecommerce-price-men.html"><img src="Images/mens-dress-2.jpg" height="200px" data-aos="fade-up"><br></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
                  </div>
                </div>
                <div class="row">
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                    <a href="ecommerce-price-men.html"><img src="Images/mens-dress-3.jpg" height="200px" data-aos="fade-up"><br></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
                  </div>
                  <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                    <a href="ecommerce-price-men.html"><img src="Images/mens-dress-4.jpg" height="200px" data-aos="fade-up"><br></a>
                    <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
                  </div>
                </div>
              </div>
            </div>
            <div class="container pr-5 text-center mt-2 pb-3">
              <div class="row pt-5">
                <div class="col">
                  <a href="Produits.jsp"><span style="border:3px solid rgb(180, 69, 69);border-radius:10px;padding:1% 2%;background-color:rgb(177, 84, 84);" class="ml-4" data-aos="zoom-in"><span style="font-weight:700;font-size:20px;color:white;text-transform: uppercase;">more</span><span class="pl-3" style="color:white;"><i class="fa fa-arrow-right" aria-hidden="true"></i></span></span></a>
                </div>
              </div>
            </div>
          </div> 
          </div>
           <div class="container-fluid mt-4 pt-2">
            <div class="container pt-4 pb-4">
              <div class="row">
               <div class="col-sm-12 text-center pb-4">
                 <a href="ecommerce-price-men.html"><span style="text-transform: uppercase;font-weight: 700;font-size:30px;" data-aos="zoom-in">ladies dress</span></a>
               </div>
              </div>
             <div class="row">
               <div class="col-xl-5 col-lg-5 text-center pt-5 hide-popular">
                 <a href="ecommerce-price-men.html"><img src="Images/ladies-dress.jpg" height="400px" data-aos="fade-up"><br></a>
                 <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
               </div>
               <div class="col-xl-7 col-lg-7 col-md-12 col-sm-12 col-12">
                 <div class="row">
                   <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                     <a href="ecommerce-price-men.html"><img src="Images/ladies-dress-1.jpg" height="200px" data-aos="fade-up"><br></a>
                 <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
                   </div>
                   <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                     <a href="ecommerce-price-men.html"><img src="Images/ladies-dress-2.jpg" height="200px" data-aos="fade-up"><br></a>
                     <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
                   </div>
                 </div>
                 <div class="row">
                   <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                     <a href="ecommerce-price-men.html"><img src="Images/ladies-dress-3.jpg" height="200px" data-aos="fade-up"><br></a>
                     <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
                   </div>
                   <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 text-center pt-3">
                     <a href="ecommerce-price-men.html"><img src="Images/ladies-dress-4.jpg" height="200px" data-aos="fade-up"><br></a>
                     <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">accessories & tradesional dress<br>$117.00</span></a>
                   </div>
                 </div>
               </div>
             </div>
           </div>
           <div class="container pr-5 text-center mt-4 pb-5">
            <div class="row pt-2 pb-3">
              <div class="col">
                <a href="Produits.jsp"><span style="border:3px solid rgb(180, 69, 69);border-radius:10px;padding:1% 2%;background-color:rgb(177, 84, 84);" class="ml-4" data-aos="zoom-in"><span style="font-weight:700;font-size:20px;color:white;text-transform: uppercase;">more</span><span class="pl-3" style="color:white;"><i class="fa fa-arrow-right" aria-hidden="true"></i></span></span></a>
              </div>
            </div>
          </div>
          </div> 
          <div class="container pt-4 pb-5">
            <div class="row">
              <div class="col-sm-12 text-center">
                <a href="ecommerce-price-men.html"><span style="text-transform: uppercase;font-weight: 700;font-size:30px;" data-aos="zoom-in">kids dress</span></a>
              </div>
            </div>
          </div> 
          <div class="container-fluid pt-5 pb-3 px-0" id = "parallax2" style="background-image:url('Images/desktop-1.jpg');background-size:cover;background-attachment: fixed;">
            <div class="container" height="200px">
              <div class="row pt-1">
              <c:forEach var="ProductsKids" items="${ProductsKids}">
               <div class="col-xl-3 col-lg-3  col-md-4 col-sm-6 col-12 pb-3 text-center">
                <a href="Product.jsp"><img src="${ProductsKids.img }" height="200px" style="border-radius:20px;" data-aos="fade-up"><br></a>
                     <a href="ecommerce-price-men.html"><span class="image-lable" data-aos="zoom-in">${ProductsKids.name }<br>$${ProductsKids.prix }</span></a>
               </div>
              </c:forEach>
              </div>
            </div>
            <div class="row">
              <div class="col pt-4 pb-5 text-center">
                <a href="Produits.jsp"><span style="border:3px solid rgb(180, 69, 69);border-radius:10px;padding:1% 2%;background-color:rgb(177, 84, 84);" class="ml-4" data-aos="zoom-in"><span style="font-weight:700;font-size:20px;color:white;text-transform: uppercase;">more</span><span class="pl-3" style="color:white;"><i class="fa fa-arrow-right" aria-hidden="true"></i></span></span></a>
              </div>
            </div>
          </div>
         <%@include file="footer.html" %>
          <script src="https://unpkg.com/aos@next/dist/aos.js"></script>
          <script>
            AOS.init({
              once:true,
              duration:1000,
            });
          /* const parallax1 =document.getElementById('parallax1');
          const parallax2 =document.getElementById('parallax2');
          window.addEventListener("scroll",function(){
            let offset = window.pageYOffset;
            parallax1.style.backgroundPositionY = offset * 0.4 + 'px';
            parallax2.style.backgroundPositionY = offset * 0.9 + 'px';
          });*/
        </script>
    </body>
</html>