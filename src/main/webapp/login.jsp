<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <c:set var="context" value="${pageContext.request.contextPath}" />
   

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Java House Cafe</title>

    <!--custom icon linkl-->
         <link rel="stylesheet" href="${context}/Resources/cssfile/fontawesome.min.css">
         <link rel="stylesheet" href="${context}/Resources/cssfile/fontawesome.css"> 
         <link rel="stylesheet" href="${context}/Resources/cssfile/all.css">
         <link rel="stylesheet" href="${context}/Resources/cssfile/all.min.css">
    
    <!-- custom css file link  -->
     <link rel="stylesheet" href="${context}/Resources/swiper.min.css">
     <link rel="stylesheet" href="${context}/Resources/css/style.css">
     <link rel="stylesheet" href="${context}/Resources/cssfile/font.css"> 
</head>

<body>
    <header class="header">

        <div class="logo"><i class="fab fa-java"></i><!-- <img src="${context}/Resources/image/dolphin1.png">-->JAVA HOUSE CAFE </div> 
        
        <nav class="navbar">
            <a href="javahouse.html">home</a>
            <a href="about.html">about</a>
            <a href="popular.html">popular</a>
            <a href="menu.html">menu</a>
            <a href="blog.html">blogs</a>
        </nav>
    
        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
            <div id="cart-btn" class="fas fa-shopping-cart"></div>
            <div id="login-btn" class="fas fa-user"></div>
        </div>
        
    </header>

    <!-- shopping-cart section  -->
<section class="shopping-cart-container">

    <div class="products-container">

        <h3 class="title">your products</h3>

        <div class="box-container">

            <div class="box">
                <i class="fas fa-times"></i>
                <img src="${context}/Resources/image/veg-lolipop.png" alt="">
                <div class="content">
                    <h3>veg lolipop</h3>
                    <span> quantity : </span>
                    <input type="number" name="" value="1" id="">
                    <br>
                    <span> price : </span>
                    <span class="price"> $80.00 </span>
                </div>
            </div>

            <div class="box">
                <i class="fas fa-times"></i>
                <img src="${context}/Resources/image/tea2.jpg" alt="">
                <div class="content">
                    <h3>tea</h3>
                    <span> quantity : </span>
                    <input type="number" name="" value="1" id="">
                    <br>
                    <span> price : </span>
                    <span class="price"> $40.00 </span>
                </div>
            </div>

            <div class="box">
                <i class="fas fa-times"></i>
                <img src="${context}/Resources/image/coffee1.jpg" alt="">
                <div class="content">
                    <h3>coffee</h3>
                    <span> quantity : </span>
                    <input type="number" name="" value="1" id="">
                    <br>
                    <span> price : </span>
                    <span class="price"> $55.00 </span>
                </div>
            </div>

            <div class="box">
                <i class="fas fa-times"></i>
                <img src="${context}/Resources/image/icecream3.jpg" alt="">
                <div class="content">
                    <h3>ice-Cream</h3>
                    <span> quantity : </span>
                    <input type="number" name="" value="1" id="">
                    <br>
                    <span> price : </span>
                    <span class="price"> $65.00 </span>
                </div>
            </div>

            <div class="box">
                <i class="fas fa-times"></i>
                <img src="${context}/Resources/image/thicksheck2.jpg" alt="">
                <div class="content">
                    <h3>thicksheck</h3>
                    <span> quantity : </span>
                    <input type="number" name="" value="1" id="">
                    <br>
                    <span> price : </span>
                    <span class="price"> $115.00 </span>
                </div>
            </div>

        </div>
    </div>

    <div class="cart-total">

        <h3 class="title"> cart total </h3>

        <div class="box">

            <h3 class="subtotal"> subtotal : <span>$200</span> </h3>
            <h3 class="total"> total : <span>$200</span> </h3>

            <a href="#" class="btn">proceed to checkout</a>

        </div>
    </div>
</section>

<!-- login-form  -->

<section class="login-form-container"> 
    <div class="container">
        <input type="checkbox" id="flip">
        <div class="cover">
          <div class="front">
            <img src="${context}/Resources/image/tea2.jpg" alt="">
            <div class="text">
              <span class="text-1">Every new friend is a <br> new adventure</span>
              <span class="text-2">Let's get connected</span>
            </div>
          </div>
          <div class="back">
            <img class="backImg" src="${context}/Resources/image/tea2.jpg" alt="">
            <div class="text">
              <span class="text-1">Complete miles of journey <br> with one step</span>
              <span class="text-2">Let's get started</span>
            </div>
          </div>
        </div>
        <div class="forms">
            <div class="form-content">
              <div class="login-form">
                <div class="title">Login</div>
              <form action="${context}/">
                <div class="input-boxes">
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your email" required>
                  </div>
                  <div class="input-box">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Enter your password" required>
                  </div>
                  <div class="text"><a href="#">Forgot password?</a></div>
                  <div class="button input-box">
                    <input type="submit" value="Sumbit">
                  </div>
                  <div class="text sign-up-text">Don't have an account? <label for="flip">Signup now</label></div>
                </div>
            </form>
          </div>
            <div class="signup-form">
              <div class="title">Signup</div>
            <form action="${context}/SignUp"  method="get" >
                <div class="input-boxes">
                  <div class="input-box">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Enter your first name"  name="fname" required>
                  </div>
                   <div class="input-box">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Enter your last name" name="lname" required>
                  </div>
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your email" name="email" required>
                  </div>
                   <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your mobile no" name="mobile_number" required>
                  </div>
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your Address " name="address" required>
                  </div>
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your State" name="state" required>
                  </div>
                  <div class="input-box">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Enter your password"  name="pwd"required>
                  </div>
                  <div class="button input-box">
                    <input type="submit" value="Sumbit" >
                  </div>
                  <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
                </div>
          </form>
        </div>
        </div>
        </div>
      </div>
    
</section>
    <!--Login section ends-->

    <!-- banner section starts  -->

<section class="banner">

    <div class="row-banner">
        <div class="content">
            <span>double cheese</span>
            <h3>burger</h3>
            <p>with cococola and fries</p>
            <a href="#menu" class="btn">order now</a>
        </div>
    </div>

    
</section>

<!-- banner section ends -->

    <!-- blogs section starts  -->

<section class="blogs" id="blogs">

    <div class="heading">
        <span>our blogs</span>
        <h3>our daily stories</h3>
    </div>

    <div class="box-container">

        <div class="box">
            <div class="image">
                <h3> <i class="fas fa-calendar"></i> 27th january, 2022 </h3>
                <img src="${context}/Resources/image/chees-pizza.jpg" alt="">
            </div>
            <div class="content">
                <div class="tags">
                    <a href="#"> <i class="fas fa-tag"></i> food / </a>
                    <a href="#"> <i class="fas fa-tag"></i> burger / </a>
                    <a href="#"> <i class="fas fa-tag"></i> pizza  </a>
                </div>
                <h3>special cheese pizza</h3>
                <p>always be yourself, unless can be a pizza</p>
                
            </div>
        </div>

        <div class="box">
            <div class="image">
                <h3> <i class="fas fa-calendar"></i> 27th january, 2022 </h3>
                <img src="${context}/Resources/image/coc3.jpg" alt="">
            </div>
            <div class="content">
                <div class="tags">
                    <a href="#"> <i class="fas fa-tag"></i> food / </a>
                    <a href="#"> <i class="fas fa-tag"></i> burger / </a>
                    <a href="#"> <i class="fas fa-tag"></i> pizza  </a>
                </div>
                <h3>cold-Drink</h3>
                <p>life is better with a cold-Drink</p>
             
            </div>
        </div>

        <div class="box">
            <div class="image">
                <h3> <i class="fas fa-calendar"></i> 27th january, 2022 </h3>
                <img src="${context}/Resources/image/thicksheck3.jpg" alt="">
            </div>
            <div class="content">
                <div class="tags">
                    <a href="#"> <i class="fas fa-tag"></i> food / </a>
                    <a href="#"> <i class="fas fa-tag"></i> burger / </a>
                    <a href="#"> <i class="fas fa-tag"></i> pizza  </a>
                </div>
                <h3>special chocolate thicksheck</h3>
                <p>sip, sip, hooray</p>
             
            </div>
        </div>

    </div>

</section>

<!-- blogs section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="newsletter">
        <h3>contact us</h3>
    </div>

    <div class="box-container">

        <div class="box">
            <h3>branch</h3>
            <p>Salabatpura</p>
            <p>vesu</p>
            <p>dumas road</p>
            <p>athwa gate</p>
        </div>

        <div class="box">
            <h3>quick links</h3>
            <a href="javahouse.html"> <i class="fas fa-arrow-right"></i> home</a>
            <a href="about.html"> <i class="fas fa-arrow-right"></i> about</a>
            <a href="popular.html"> <i class="fas fa-arrow-right"></i> popular</a>
            <a href="menu.html"> <i class="fas fa-arrow-right"></i> menu</a>
           <!-- <a href="#order"> <i class="fas fa-arrow-right"></i> order</a>-->
            <a href="blog.html"> <i class="fas fa-arrow-right"></i> blogs</a>
        </div>

        <div class="box">
            <h3>Contact info</h3>
            <p>+91-1234567890</p>
            <p>+91-1234567809</p>
            <p><span>abcd@gmail.com</span></p>
            <p><span>pragneshprajapati2411@gmail.com</span></p>
            <p>Surat, india - 395003</p>
        </div>

        <div class="box">
            <h3>opening hours</h3>
            <p>monday : 11:00am to 10:00pm</p>
            <p>tuesday : 11:00am to 10:00pm</p>
            <p>wednesday : 11:00am to 10:00pm</p>
            <p>friday : 11:00am to 10:00pm</p>
            <p>saturday : 11:00am to 10:00pm</p>
            <p>sunday : 11:00am to 10:00pm</p>
        </div>

    </div>

    <div class="bottom">

        <div class="share">
            <a href="#" class="fab fa-facebook-f"></a>
            <a href="#" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
            <a href="#" class="fab fa-pinterest"></a>
        </div>
        <div class="credit"> copyrights <i class="fas fa-copyright"></i> 2022 | all rights reserved by <span>JAVA HOUSE CAFE</span> </div>

    </div>

</section>

<!-- footer section ends -->


<script src="${context}/Resources/js/swiper-bundle.js"> </script>
<script src="${context}/Resources/js/swiper-bundle.min.js"> </script>
<script src="${context}/Resources/js/swiper-bundle.min.js.map"> </script>
<!-- custom js file link  -->
<script src="${context}/Resources/js/script.js"></script>
</body>
</html>