<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.CafeZone.login.User"%>
    <% 
        User u =(User) request.getSession().getAttribute("user");
         
        %>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <c:set var="context" value="${pageContext.request.contextPath}" />

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
     
     
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> --> 
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>

<body>

<header class="header">

  <div class="logo"><i class="fab fa-java"></i>JAVA HOUSE CAFE </div>
    
    <nav class="navbar">
        <%if(u!=null && u.getIsAdmin()==1) {%>
       <a href="${context}/ManageProducts?action=productList">Manage Products</a>
		<a href="${context}/ManageUser?action=showUserList">Manage Users</a>
		<%} %>
		<a href="${context}/ManageProducts?action=showproductlistforuser">Home</a>
       
    </nav>

    <div class="icons">
      <i class="fa fa-sign-out-alt" id="logout-btn" onclick="logout()"></i>
    </div>
    
</header>

Add user

<div class="acontainer">
 <div class="signup-form">
          
            <form action="${context}/ManageUser"  method="get" >
            <input type="hidden" name="action" value="insertUser">
             <input type="hidden" name="profile" value="0">
            <input type="hidden" name="userId" value="${users.id}" >
   <div class="input-boxes">
                  <div class="input-box">
                     <label>First Name </label>
                    <input type="text" placeholder="Enter your first name"  value="${users.firstName}" name="fname" required>
                  </div>
                   <div class="input-box">
                    <label>Last Name </label>
                    <input type="text" placeholder="Enter your last name"  value="${users.lastName}"  name="lname" required>
                  </div>
                  <div class="input-box">
                    <label>Email </label>
                    <input type="text" placeholder="Enter your email" value="${users.email}"  name="email" required>
                  </div>
                   <div class="input-box">
                    <label>Mobile Number </label>
                    <input type="text" placeholder="Enter your mobile no" value="${users.mobileNo}"  name="mobile_number" required>
                  </div>
                  <div class="input-box">
                   <label>Address </label>
                    <input type="text" placeholder="Enter your Address "  value="${users.address}" name="address" required>
                  </div>
                  <div class="input-box">
<label>State </label>
                    <input type="text" placeholder="Enter your State"   value="${users.state}" name="state" required>
                  </div>
                  <div class="input-box">
                    <label>Password 	 </label>
                    <input type="text" placeholder="Enter your password" value="${users.password}" name="pwd" required>
                  </div>
                  
                  <%--<div class="input-box">
                   <select name="isAdmin" ">
    <option value="1">Admin</option>
  <option value="0">User</option>

</select>
                  </div> --%>
                  <div class="button input-box">
                    <input type="submit" value="Add" >
                  </div>
                
                </div>
          </form>
          </div>
          </div>
          <script type="text/javascript">

function logout(){
		
	location.replace("${context}/Logout");
	
}
</script>
<script src="${context}/Resources/js/swiper.min.js"> </script>
<!-- <script src="${context}/Resources/js/bootstrap.min.js.map"> </script>
<script src="${context}/Resources/js/jquery.min.js"> </script>  -->

<!-- custom js file link  -->
<script src="${context}/Resources/js/script.js"></script>
<script src="${context}/Resources/js/bootstrap.min.js.map"> </script>
<script src="${context}/Resources/js/jquery.min.js"> </script>
          
</body>
</html>