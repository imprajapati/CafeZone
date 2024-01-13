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
            <a href="javahouse.html">home</a>
            <a href="about.html">about</a>
            <a href="popular.html">popular</a>
            <a href="menu.html">menu</a>
            <a href="blog.html">blogs</a>
        </nav>
    
        <div class="icons">
            <div id="menu-btn" class="fas fa-bars"></div>
           
            <div id="login-btn" class="fas fa-user"></div>
        </div>
        
    </header>
    
    
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

</body>
</html>