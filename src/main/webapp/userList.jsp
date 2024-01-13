<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.CafeZone.login.User"%>
    <% 
        User u =(User) request.getSession().getAttribute("user");
         
        %>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
         <c:set var="context" value="${pageContext.request.contextPath}" />
         
        <c:set var="path" value="/webapp/Resources/products/"/>
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

<a class="btn" href="${context}/ManageUser?action=addUser">Add Users</a>


<table>
<tr>
    <th>Name</th>
    <th>Email</th>
     <th>Mobile No</th>
    <th>Address</th>
    <th>State</th>
     <th>Admin</th>
    <th>Actions</th>
     
  </tr>
<c:forEach var="par" items="${userList}">

      <tr>
    <td> ${par.firstName}  ${par.lastName}</td>
    <td>${par.email}</td>
     <td>${par.mobileNo}</td>
     <td>${par.address}</td>
     <td>${par.state}</td>
 <td>${par.isAdmin}</td>
    <td> <a href="${context}/ManageUser?action=updateUser&userId=${par.id}">Update</a>
    <a href="${context}/ManageUser?action=deleteUser&userId=${par.id}">Delete</a>
    </td>
  </tr>
      </c:forEach>


</table>
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