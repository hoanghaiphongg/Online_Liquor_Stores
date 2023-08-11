<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.CustomerDao"%>
<%@page import="java.util.*"%>
<%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth!=null){
		request.setAttribute("auth", auth);
	}
	CustomerDao cd= new CustomerDao(DbCon.getConnection());

%>
<!DOCTYPE html>
<html>
<head>
<title>Customer</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>
<%@include file="Includes/navbar.jsp" %>



<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center">Add a new Product</div> 
		<div class= "card-body">
			<form action ="add2.jsp" method="post">
				
				<div class = "form-group">
					<label>Brand</label>
					<input type="text" class="form-control" name = "brand" placeholder="Enter brand" required>
				</div>
				<div class = "form-group">
					<label>Price</label>
					<input type="text" class="form-control" name = "price" placeholder="price" required>
				</div>
				<div class = "form-group">
					<label>Description</label>
					<input type="text" class="form-control" name = "description" placeholder="description" required>
				</div>
				<div class = "form-group">
					<label>Title</label>
					<input type="text" class="form-control" name = "title" placeholder="title" required>
				</div>
				<div class = "form-group">
					<label>Images</label>
					<input type="text" class="form-control" name = "images" placeholder="link of images" required>
				</div>
				<div class = "form-group">
					<label>Discount</label>
					<input type="text" class="form-control" name = "discount" placeholder="discount" required>
				</div>
				<div class = "form-group">
					<label>Product_in_stock</label>
					<input type="text" class="form-control" name = "product_in_stock" placeholder="product_in_stock" required>
				</div>
				<div class = "form-group">
					<label>category_id</label>
					<input type="text" class="form-control" name = "category_id" placeholder="category_id" required>
				</div>
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Add new product</button>
				</div>
				
			</form>
		</div>
	</div>

</div>


<%@include file="Includes/Footer.jsp" %>
</body>
</html>