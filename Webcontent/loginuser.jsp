<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cn.techtutorial.model.*"%>

<%
	
%>
<!DOCTYPE html>
<html>
<head>
<title>User Login Page</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>
<%@include file="Includes/navbar3.jsp" %>


<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center">User Login</div> 
		<div class= "card-body">
			<form action ="user-login2" method="post">
				<div class = "form-group">
					<label>Email Address</label>
					<input type="email" class="form-control" name = "Login Email" placeholder="Enter Your Email" required>
				</div>
				
				<div class = "form-group">
					<label>Password</label>
					<input type="password" class="form-control" name = "Login password" placeholder="********" required>
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Login</button>
				</div>
			</form>
					<a class="nav-link" href="Cart3.jsp">Register </a>
		</div>
	</div>
	

</div>
<%@include file="Includes/Footer.jsp" %>
</body>
</html>