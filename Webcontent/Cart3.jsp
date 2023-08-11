<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.CustomerDao"%>
<%@page import="java.util.*"%>
<%
	
	CustomerDao cd= new CustomerDao(DbCon.getConnection());

%>
<!DOCTYPE html>
<html>
<head>
<title>Customer</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>

<%@include file="Includes/navbar3.jsp" %>


<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center">Add a new Customer</div> 
		<div class= "card-body">
			<form action ="cart4.jsp" method="post">
				<div class = "form-group">
					<label>Email</label>
					<input type="text" class="form-control" name = "email" placeholder="Enter email" required>
				</div>
				<div class = "form-group">
					<label>Password</label>
					<input type="text" class="form-control" name = "password" placeholder="Enter password" required>
				</div>
				<div class = "form-group">
					<label>Name</label>
					<input type="text" class="form-control" name = "name" placeholder="Enter name" required>
				</div>
				<div class = "form-group">
					<label>Gender</label>
					<input type="text" class="form-control" name = "gender" placeholder="F or M" required>
				</div>
				<div class = "form-group">
					<label>Address</label>
					<input type="text" class="form-control" name = "address" placeholder="Enter Address" required>
				</div>
				<div class = "form-group">
					<label>Phone number</label>
					<input type="text" class="form-control" name = "phone" placeholder="Enter phone number" required>
				</div>
				
				<div class = "form-group">
					<label>dob</label>
					<input type="text" class="form-control" name = "dob" placeholder="yyyy-mm-dd" required>
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Add new customer</button>
				</div>
				
			</form>
		</div>
	</div>

</div>


<%@include file="Includes/Footer.jsp" %>
</body>
</html>