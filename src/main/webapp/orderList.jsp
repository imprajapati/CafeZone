<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.CafeZone.login.User"%>
   
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.CafeZone.model.Orders"%>
<%@page import="java.util.List"%>
<%@page import="com.CafeZone.login.User"%>
 <% 
        User u =(User) request.getSession().getAttribute("user");
         
        %>
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
     
     <!--   <script src="${context}/Resources/js/bootstrap.min.js.map"> </script>
<script src="${context}/Resources/js/jquery.min.js"> </script>
 <link rel="stylesheet" href="${context}/Resources/css/bootstrap.min.css.map"> -->
      
 <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
   --%>
</head>
<body onload=pageLoad()>


<header class="header">

  <div class="logo"><i class="fab fa-java"></i>JAVA HOUSE CAFE </div>
    
    <nav class="navbar">
         <%--<%if(u!=null && u.getIsAdmin()==1) {--%>  
      <!-- <a href="${context}/ManageProducts?action=productList">Manage Products</a>
		<a href="${context}/ManageUser?action=showUserList">Manage Users</a>-->
	<%--	<%} %> --%>
		<a href="${context}/ManageProducts?action=showproductlistforuser">Home</a>
       
    </nav>

    <div class="icons">
      <i class="fa fa-sign-out-alt" id="logout-btn" onclick="logout()"></i>
    </div>
    
</header>

<br>
 <%-- <% 
        User u =(User) request.getSession().getAttribute("user");
         
        %> --%>
<table>

<%-- <a href="${context}/ManageProducts?action=addProduct" class="btn btn-primary">Add Product</a> --%>
<tr>
   <th>Order id</th>
   <th>User Name</th>
    <th>Product Name</th>
    <th>Order Date</th>
    <th>Last updated</th>
  <th>Product price</th>
    <th>Product qty</th>
  <th> Order Status</th>
    <th>Actions</th>
     
  </tr>



<c:forEach var="order" items="${orders}">

 <tr>
 
    <td>${order.id}</td>
    <td>${order.userName}</td>
<td>${order.productName}</td>
<td>${order.createdAt}</td>
<td>${order.modifiedAt}</td>

<td>${order.price}</td>
<td >${order.qty}</td>
<td  id="${order.id}" >${order.orderStatus}</td>
<td>


<%  if(u.getIsAdmin()==1){ %>

<select name="order-status" onchange="val(${order.productId},${order.id} )" id="status_${order.id}">
    <option value="Cancel">Cancel</option>
  <option value="In progress">In progress</option>
  <option value="Delivered">Delivered</option>
</select>

<%}else{ %>

<%-- <select name="order-status" onchange="val(${order.productId},${order.id} )" id="status_${order.id}">
    <option value="cancel">Cancel</option>
</select> --%>

<input type="button" value="Cancel" onclick="val(${order.productId},${order.id} )"   id="status_${order.id}" >


<%} %>
</td>

</tr>
  </c:forEach>
</table>


<script type="text/javascript">


function val(productId,orderId){
	//alert("productId==>"+productId+"===>uid"+userID);
	
	var option=document.getElementById("status_"+orderId).value;
	
	alert(option)

	var xhr = new XMLHttpRequest();
	xhr.open("POST", '${context}/ManageOrders', true);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	xhr.onreadystatechange = function() {
	    if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
	      
	        
	        alert("Status updated");
	        
	        document.getElementById(orderId).innerHTML=option;
	        
	    }
	}
	xhr.send("action=updateOrderStatus&productId="+productId+"&status="+option+"&orderId="+orderId);



}
function logout(){
	
	location.replace("${context}/Logout");
	
}

function pageLoad(){
	
	<%  if(u.getIsAdmin()==1){ %>
		<c:forEach var="order" items="${orders}">
		document.getElementById('status_${order.id}').value = '${order.orderStatus}';
	  </c:forEach>
<%}%>


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