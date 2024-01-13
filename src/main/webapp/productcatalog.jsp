<%@page import="org.apache.tomcat.util.http.fileupload.RequestContext"%>

<%@page import="com.CafeZone.login.User"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <c:set var="context" value="${pageContext.request.contextPath}" />
        <c:set var="path" value="/webapp/Resources/products/"/>
        
        <% 
        User u =(User) request.getSession().getAttribute("user");
         
        %>
        
        
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Java House Cafe</title>

    <!--custom icon linkl-->
         <link rel="stylesheet" href="${context}/Resources/cssfile/fontawesome.min.css">
         <link rel="stylesheet" href="${context}/Resources/cssfile/fontawesome.css"> 
         <link rel="stylesheet" href="${context}/Resources/cssfile/all.css">
         <link rel="stylesheet" href="${context}/Resources/cssfile/all.min.css">
    
    
    <!-- custom css file link  -->
     <link rel="stylesheet" href="${context}/Resources/css/swiper.min.css">
     <link rel="stylesheet" href="${context}/Resources/css/style.css">
     <link rel="stylesheet" href="${context}/Resources/cssfile/font.css">
     
     <!--    <link rel="stylesheet" href="${context}/Resources/css/bootstrap.min.css.map">  -->
      
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">  
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>  
 
       <style>
.dropbtn {
background: rgb(34, 31, 31);
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
  cursor: pointer;
  border-radius: .5rem;
}

.dropbtn:hover, .dropbtn:focus {
 color: #27ae60;
  border-radius: 5rem;
}

.dropdown {
  position: relative;
  display: inline-block;
  border-radius: .5rem;
}

.dropdown-content {
  font-size : 1rem;
  display: none;
  position: absolute;
  background-color: black;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  font-size : 2rem;
  margin-left:2rem;
  font-family: cursive;
  padding: auto;
  text-decoration: none;
  display: block;
}

/*.dropdown a:hover {
background-color: #fff;
color: black;
}*/

.show {display: block;}
</style>
</head>
<body>
       
<!-- header section starts  -->

<header class="header">

    <div class="logo"><i class="fab fa-java"></i>JAVA HOUSE CAFE </div> 
    
    <nav class="navbar">
        <a href="#home">home</a>
        <a href="#about">about</a>
        <%if(u!=null && u.getIsAdmin()==1) {%>
        <a href="${context}/ManageProducts?action=productList">Admin</a>
       
       <%} %>
       <a href="${context}/ManageOrders?action=showOrdersList" >Orders</a> 
       
    </nav>

  
    <div class="dropdown">
  <button onclick="dropDown()" class="dropbtn"><%=u.getFirstName()+" "+ u.getLastName() %></button>
  <div id="myDropdown" class="dropdown-content">
    <a href="${context}/ManageUser?action=showUserProfile&userId=<%=u.getId()%>">Profile</a>
  
  </div>
</div>
  <div class="icons">
        <div id="menu-btn" class="fas fa-bars"></div>
        
          <div class="fas fa-shopping-cart" onclick="getCartItems()"></div>
     	<i class="fas fa-sign-out-alt" id="logout-btn" onclick="logout()"></i>
    </div>
</header>




<!-- header section ends  -->
<!--pop up start  -->



<!--   <h2>Modal Example</h2>
  Trigger the modal with a button
  <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Open Modal</button>
 -->
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Cart items</h4>
        </div>
        <div class="modal-body"  id="cartBox">
      

        <h3 class="title">your products</h3>


        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  


<!--pop up end  -->
<!-- search-form  -->



<!-- shopping-cart section  -->

<section class="shopping-cart-container">

    <div class="products-container">

        <h3 class="title">your products</h3>

        <div class="box-container" id="cartItemList">

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

<%-- <section class="login-form-container"> 
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
              <form action="#">
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
            <form action="#">
                <div class="input-boxes">
                  <div class="input-box">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Enter your name" required>
                  </div>
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your email" required>
                  </div>
                  <div class="input-box">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Enter your password" required>
                  </div>
                  <div class="button input-box">
                    <input type="submit" value="Sumbit">
                  </div>
                  <div class="text sign-up-text">Already have an account? <label for="flip">Login now</label></div>
                </div>
          </form>
        </div>
        </div>
        </div>
      </div>
    
</section> --%>
    <!--Login section ends-->

<!-- home section starts  -->

<section class="home" id="home">
    

    <div class="swiper home-slider">
        <div class="swiper-wrapper wrapper">
           <c:forEach var="par" items="${productsList}">

            <div class="swiper-slide slide">
                <div class="contain">
                <span>Our Special Dish</span>
                <h3>${par.product_name}</h3>
                <p>${par.product_details}</p>
   				 <a href="#menu" class="btn" onclick="addToCart(${par.id})">add to cart</a>
            </div>
            <div class="image">
                <img src="${context}${path}${par.product_image}" alt="" >
            </div>
            </div>
          </c:forEach>
        </div>
        <div class="swiper-pagination"></div>
    </div>
</section>

<!-- home section ends  -->

<!-- category section starts  -->

<section class="category">

    <div class="box">
        <img src="${context}/Resources/image/cat-1.png" alt="">
        <h3>combo</h3>
    </div>

    <div class="box">
        <img src="${context}/Resources/image/cat-2.png" alt="">
        <h3>pizza</h3>
    </div>

    <div class="box">
        <img src="${context}/Resources/image/cat-3.png" alt="">
        <h3>burger</h3>
    </div>

 <!---   <a href="#" class="box">
        <img src="${context}/Resources/image/cat-4.png" alt="">
        <h3>chicken</h3>
    </a> -->

    <div class="box">
        <img src="${context}/Resources/image/cat-5.png" alt="">
        <h3>dinner</h3>
    </div>

    <div class="box">
        <img src="${context}/Resources/image/cat-6.png" alt="">
        <h3>coffee</h3>
    </div>

</section>

<!-- category section ends -->


<!-- about section starts  -->

<section class="about" id="about">

    <div class="image">
        <img src="${context}/Resources/image/coffee2.jpg" alt="">
    </div>

    <div class="content">
        <span>why choose us?</span>
        <h3 class="title">what's make our food delicious!</h3>
        <p>a cup of gourmet coffee shared with a frind is happiness tasted and time will spent</p>
       <!-- <a href="#" class="btn">read more</a> -->
        <div class="icons-container">
            <div class="icons">
                <img src="${context}/Resources/image/serv-1.png" alt="">
                <h3>fast delivery</h3>
            </div>  
            <div class="icons">
                <img src="${context}/Resources/image/serv-2.png" alt="">
                <h3>fresh food</h3>
            </div>   
            <div class="icons">
                <img src="${context}/Resources/image/serv-3.png" alt="">
                <h3>best quality</h3>
            </div>  
            <div class="icons">
                <img src="${context}/Resources/image/serv-4.png" alt="">
                <h3>24/7 support</h3>
            </div>           
        </div>
    </div>

</section>

<!-- about section ends -->

<!-- popular section starts  -->

<section class="popular" id="popular">

    <div class="heading">
        <span>popular food</span>
        <h3>our special dishes</h3>
    </div>

    <div class="box-container">
      
<%-- <c:forEach var="par" items="${specialProductsList}">


        <div class="box">
            <!--<a href="#" class="fas fa-heart"></a>-->
            <div class="image">
                <img src="${context}${path}${par.product_image}" alt="">
            </div>
            <div class="content">
                <h3>${par.product_details}</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                
                </div>
                <div class="price" ><span>$</span>${par.price} <span>${par.price+50}</span></div>
                <a href="#menu" class="btn" onclick="addToCart(${par.id})">add to cart</a>
            </div>
        </div>
	
          </c:forEach> --%>


    </div>

</section>

<!-- popular section ends -->

<!-- banner section starts  -->

<section class="banner">

    <div class="row-banner">
        <div class="content">
            <span>double cheese</span>
            <h3>burger</h3>
            <p>with cococola and fries</p>
           
        </div>
    </div>

    <div class="grid-banner">
        <div class="grid">
            <img src="${context}/Resources/image/banner-1.png" alt="">
            <div class="content">
                <span>special offer</span>
                <h3>upto 50% off</h3>
               
            </div>
        </div>
        <div class="grid">
            <img src="${context}/Resources/image/banner-2.png" alt="">
            <div class="content center">
                <span>special offer</span>
                <h3>upto 25% extra</h3>
             
            </div>
        </div>
        <div class="grid">        
            <img src="${context}/Resources/image/banner-3.png" alt="">
            <div class="content">
                <span>limited offer</span>
                <h3>100% cashback</h3>
                
            </div>
        </div>
    </div>

</section>

<!-- banner section ends -->

<!--Menu section Starts-->

<%-- <section class="menu" id="menu">
    <div class="heading">
        <span>our menu</span>
        <h3>today's speciality</h3>
    </div>

    <div class="box-container">
       
        <div class="box">
            <div class="image">
                <img src="${context}/Resources/image/thicksheck1.jpg" alt="" class="">
                <!--<a href="#" class="fas fa-heart"></a>-->
            </div>
            <div class="content">
               <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3>thicksheck</h3>
            <p> All you need is love and thicksheck</p>
            <a href="#" class="btn">add to cart</a>
            <span>&#8377<span>65</span></span>
        </div>
    </div>

 
        <div class="box">
            <div class="image">
                <img src="${context}/Resources/image/thicksheck2.jpg" alt="" class="">
                <!--<a href="#" class="fas fa-heart"></a>-->
            </div>
            <div class="content">
                <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3 class="">strawberry thicksheck</h3>
            <p class=""> chiling with the strawberry thicksheck</p>
            <a href="#" class="btn">add to cart</a>
            <span>&#8377<span>50</span></span>
        </div>
    </div>

   
        <div class="box">
            <div class="image">
                <img src="${context}/Resources/image/thicksheck3.jpg" alt="" class="">
                <!--<a href="#" class="fas fa-heart"></a>-->
            </div>
            <div class="content">
                <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3 class="">chocolate thicksheck</h3>
            <p class="">coolest drink ever</p>
            <a href="#" class="btn">add to cart</a>
            <span>&#8377<span>110</span></span>
        </div>
    </div>

   
        <div class="box">
            <div class="image">
                <img src="${context}/Resources/image/tea1.jpg" alt="" class="">
                <!--<a href="#" class="fas fa-heart"></a>-->
            </div>
            <div class="content">
                <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3 class="">tea</h3>
            <p class=""> all i need is on massive cup of tea</p>
            <a href="#" class="btn">add to cart</a>
            <span>&#8377<span>30</span></span>
        </div>
    </div>

  
        <div class="box">
            <div class="image">
                <img src="${context}/Resources/image/tea2.jpg" alt="" class="">
                <!--<a href="#" class="fas fa-heart"></a>-->
            </div>
            <div class="content">
                <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3 class="">special tea</h3>
            <p class="">any time is tea time</p>
            <a href="#" class="btn">add to cart</a>
            <span>&#8377<span>35</span></span>
        </div>
    </div>

  
        <div class="box">
            <div class="image">
                <img src="${context}/Resources/image/tea3.jpg" alt="" class="">
                <!--<a href="#" class="fas fa-heart"></a>-->
            </div>
            <div class="content">
                <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3 class="">tea</h3>
            <p class=""> come,let's drink tea and talk about juicy stuff</p>
            <a href="#" class="btn">add to cart</a>
            <span>&#8377<span>35</span></span>
        </div>
    </div>

        <div class="box">
            <div class="image">
                <img src="${context}/Resources/image/sandwich1.jpg" alt="" class="">
                <!--<a href="#" class="fas fa-heart"></a>-->
            </div>
            <div class="content">
                <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3 class="">sandwich</h3>
            <p class=""> lunch time is best in sandwich form</p>
            <a href="#" class="btn">add to cart</a>
            <span>&#8377<span>65</span></span>
        </div>
    </div>

        <div class="box">
            <div class="image">
                <img src="${context}/Resources/image/sandwich2.jpg" alt="" class="">
                <!--<a href="#" class="fas fa-heart"></a>-->
            </div>
            <div class="content">
                <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <h3 class="">cheese sandwich</h3>
            <p class=""> life is like a sandwich, the more you add to it, the better it becomes</p>
            <a href="#" class="btn">add to cart</a>
            <span>&#8377<span>150</span></span>
        </div>
    </div>

        <div class="box">
            <div class="image">
                <img src="${context}/Resources/image/sandwich 3.jpg" alt="" class="">
                <!--<a href="#" class="fas fa-heart"></a>-->
            </div>
            <div class="content">
                <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star-half-alt"></i>
            </div>
            <h3 class="">special sandwich</h3>
            <p class=""> i make sandwiches disappear. what's your superpower?</p>
            <a href="#menu" class="btn">add to cart</a>
            <span>&#8377<span>140</span></span>
        </div>
    </div>

    <div class="box">
        <div class="image">
            <img src="${context}/Resources/image/coffee1.jpg" alt="" class="">
            <!--<a href="#" class="fas fa-heart"></a>-->
        </div>
        <div class="content">
            <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            
        </div>
        <h3 class="">Coffee</h3>
        <p class="">any time is a good time for coffee</p>
        <a href="#menu" class="btn">add to cart</a>
        <span>&#8377<span>50</span></span>
    </div>
    </div>

    <div class="box">
        <div class="image">
            <img src="${context}/Resources/image/coffee2.jpg" alt="" class="">
            <!--<a href="#" class="fas fa-heart"></a>-->
        </div>
        <div class="content">
            <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star-half-alt"></i>
        </div>
        <h3 class="">cappuccino coffee</h3>
        <p class="">with enough coffee, i could rule the world</p>
        <a href="#menu" class="btn">add to cart</a>
        <span>&#8377<span>55</span></span>
    </div>
</div>

<div class="box">
    <div class="image">
        <img src="${context}/Resources/image/coffee3.jpg" alt="" class="">
        <!--<a href="#" class="fas fa-heart"></a>-->
    </div>
    <div class="content">
        <div class="stars">
        <i class="fas fa-star"></i>
        <i class="fas fa-star"></i>
        <i class="fas fa-star"></i>
        <i class="fas fa-star"></i>
        <i class="fas fa-star-half-alt"></i>
    </div>
    <h3 class="">coffee</h3>
    <p class="">behind every great day is a cup of coffee</p>
    <a href="#menu" class="btn">add to cart</a>
    <span>&#8377<span>45</span></span>
</div>
</div>


</div>
</section> --%>
<!--Menu section ends-->



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

    <!-- <div class="box">
            <h3>quick links</h3>
            <a href="#home"> <i class="fas fa-arrow-right"></i> home</a>
            <a href="#about"> <i class="fas fa-arrow-right"></i> about</a>
            <a href="#popular"> <i class="fas fa-arrow-right"></i> popular</a>
            <a href="#menu"> <i class="fas fa-arrow-right"></i> menu</a>
           <!-- <a href="#order"> <i class="fas fa-arrow-right"></i> order</a>-->
           <!-- <a href="#blogs"> <i class="fas fa-arrow-right"></i> blogs</a>
        </div> -->  
  
        <div class="box">
            <h3>Contact info</h3>
            <p><i class="fa fa-phone"></i> <span>+91-9106934787</span></p>
            <p><i class="fa fa-phone"></i> <span>+91-1234567890</span></p>
            <p> <i class="fas fa-envelope"></i> <span>cafejavahouse@gmail.com</span></p>
            <p> <i class="fas fa-envelope"></i> <span>pragneshprajapati2411@gmail.com</span></p>
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

        <div class="credit"> created <span>JAVA HOUSE CAFE</span> | all rights reserved! </div>
        
    </div>

</section>

<!-- footer section ends -->








<script type="text/javascript">

function dropDown(){
	
	
	alert("Profile Show");
	 document.getElementById("myDropdown").classList.toggle("show");
	
}
//Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
function logout(){
		
	location.replace("${context}/Logout");
	
}


function addToCart(productId){
	
	
	alert("Product ID ==>"+productId)
	
	
	
	
	var xhr = new XMLHttpRequest();
	xhr.open("POST", '${context}/ManageCart', true);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
	    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
	        // Request finished. Do processing here.
	        
	        alert(xhr.responseText);
	        
	        
	        
	    }
	}
	xhr.send("action=addTocart&productId="+productId);
	
} 

function getCartItems(){
	
	alert("Purchased")
	
	var xhr = new XMLHttpRequest();
	xhr.open("POST", '${context}/ManageCart', true);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
	    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
	        // Request finished. Do processing here.
	        
	       // alert(xhr.responseText);
	        
	        document.getElementById("cartBox").innerHTML=xhr.responseText;
	        $('#myModal').modal('show');
	        
	        
	    }
	}
	xhr.send("action=getCartItems");
	
	
}



function removeItem(itemId){
	
	
	
	//alert("iddd=>"+itemId)
	
	
	
	var xhr = new XMLHttpRequest();
	xhr.open("POST", '${context}/ManageCart', true);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
	    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
	        // Request finished. Do processing here.
	        
	       // alert(xhr.responseText);
	        
	        document.getElementById("cartBox").innerHTML=xhr.responseText;
	        $('#myModal').modal('show');
	        
	        
	    }
	}
	xhr.send("action=deleteCartItems&itemId="+itemId);
}



function updateQty(productId){
	
	
	var qty=document.getElementById(productId).value;
	
	var xhr = new XMLHttpRequest();
	xhr.open("POST", '${context}/ManageCart', true);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
	    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
	        // Request finished. Do processing here.
	        
	        //alert(xhr.responseText);
	    	   document.getElementById("cartBox").innerHTML=xhr.responseText;
	        
	        
	    }
	}
	xhr.send("action=updateQty&productId="+productId+"&qty="+qty);
	
	
	
}


function buyNow(){

	var xhr = new XMLHttpRequest();
	xhr.open("POST", '${context}/ManageOrders', true);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
	    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
	        // Request finished. Do processing here.
	        
	        alert("order sucessfully placed ");

	   	 $('#myModal').modal('hide');
	        
	        
	    }
	}
	xhr.send("action=showOrders");
	
	
	
}

</script>







<script src="${context}/Resources/js/swiper.min.js"> </script>
<!-- <script src="${context}/Resources/js/bootstrap.min.js.map"> </script>
<script src="${context}/Resources/js/jquery.min.js"> </script>  -->

<!-- custom js file link  -->
<script src="${context}/Resources/js/script.js"></script>

</body>
</html>