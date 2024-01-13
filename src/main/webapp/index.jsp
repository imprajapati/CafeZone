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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
      
    
    
</head>

<body>
    <header class="header">

        <div class="logo"><i class="fab fa-java"></i>JAVA HOUSE CAFE </div> 
        
        <nav class="navbar">
            <a href="#" id="home" class="home">home</a>
            <a href="#" id="about">about</a>
            <a href="#" id="prop">popular</a>
            <a href="#" id="menu">menu</a>
            <a href="#" id="blog">blogs</a>
        </nav>
    
        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
           
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
        
        <c:if test="${not empty errormsg}">
        <div>
        <h1>${errormsg}</h1>
        </div>
        </c:if>
        
        
        
                <div class="title">Login</div>
              <form action="${context}/Login" method="post" name="loginform" onsubmit="return loginvalidation() "  >
                <div class="input-boxes">
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your email" id="email" name ="email">
                  </div>
                  <div class="input-box">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Enter your password" id="pwd" name="pwd">
                  </div>
                  <div class="text"><a href="#"  onclick="resetPassword()">Forgot password?</a></div>
                  <div class="button input-box">
                    <input type="submit" value="Sumbit">
                  </div>
                  <div class="text sign-up-text">Don't have an account? <label for="flip">Signup now</label></div>
                </div>
            </form>
          </div>
            <div class="signup-form">
              <div class="title">Signup</div>
            <form action="${context}/SignUp"  method="get" onsubmit="return(signupvalidation())" >
                <div class="input-boxes">
                  <div class="input-box">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Enter your first name" id="fname" name="fname" >
                  </div>
                   <div class="input-box">
                    <i class="fas fa-user"></i>
                    <input type="text" placeholder="Enter your last name" id="lname" name="lname" >
                  </div>
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your email" id="email" name="email" >
                  </div>
                   <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your mobile no" id="mno" name="mobile_number" >
                  </div>
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your Address " id="add" name="address" >
                  </div>
                  <div class="input-box">
                    <i class="fas fa-envelope"></i>
                    <input type="text" placeholder="Enter your State" id="state" name="state" >
                  </div>
                  <div class="input-box">
                    <i class="fas fa-lock"></i>
                    <input type="password" placeholder="Enter your password" id="pwd"  name="pwd">
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
            <a href="https://instagram.com/_imvrushabh29_?igshid=YmMyMTA2M2Y=" class="fab fa-twitter"></a>
            <a href="#" class="fab fa-instagram"></a>
            <a href="#" class="fab fa-linkedin"></a>
            <a href="#" class="fab fa-pinterest"></a>
        </div>
        <div class="credit"> created <span>JAVA HOUSE CAFE</span> | all rights reserved! </div>

    </div>

</section>

<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal"  onclick="close()">&times;</button>
          <h4 class="modal-title">Reset Password </h4>
        </div>
        <div class="modal-body"  id="resetPwd">
      <form id="d">

Email:- <input type="text" name= "email"  id="email" placeholder="Enter email Id" ><br>

<br>
<a href="#" onclick="sendOtp()"> <i class="fas fa-tag"></i> Send Otp  </a>
<br>
<div id="password" style="display: none">
OTP:- <input type="text" name= "OTP" id="otp" placeholder="Enter Otp  sent to your email id" ><br>
Password:- <input  type="text" name="password"   id="setPwd" placeholder="Set new password"  />

</div>
<br>
<br>
<button type="button" onclick="setPaasword()">Change password</button>
</form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="close()">Close</button>
        </div>
      </div>
      
    </div>
  </div>


<script type="text/javascript">

function resetPassword(){
	
	
	alert("for got pwd")
	$('#d')[0].reset();
	 $('#myModal').modal('show');

	
}




function sendOtp(){
	
	
	
	alert("otp sent")
	
	
	
	
	
	
	 var email=document.getElementById("email").value;
	 var otp=document.getElementById("otp").value;
	 //.innerHTML=xhr.responseText;
		
		var xhr = new XMLHttpRequest();
		xhr.open("Post", '${context}/ManagePassword', true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.onreadystatechange = function() {
		    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
		        // Request finished. Do processing here.
		        
		        alert(xhr.responseText);
		        $('#password').show();
		        
		        
		    }
		}
		xhr.send("action=sendOtp&email="+email+"&otp="+otp);
	
	
	
}


function setPaasword(){
	
	alert("set password")
	
	
	
	var email=document.getElementById("email").value;
	 var otp=document.getElementById("otp").value;
	 var newPass=document.getElementById("setPwd").value;
	 
		var xhr = new XMLHttpRequest();
		xhr.open("Post", '${context}/ManagePassword', true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.onreadystatechange = function() {
		    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
		        // Request finished. Do processing here.
		        
		        alert(xhr.responseText);
		        $('#password').show();
		        
		        
		    }
		}
		xhr.send("action=setNewPassword&email="+email+"&otp="+otp+"&newPassword="+newPass);
	
	
	
}





</script> 



<script src="${context}/Resources/js/swiper-bundle.js"> </script>
<script src="${context}/Resources/js/swiper-bundle.min.js"> </script>
<script src="${context}/Resources/js/swiper-bundle.min.js.map"> </script>
<!-- custom js file link  -->
<script src="${context}/Resources/js/script.js"></script>
</body>
</html>