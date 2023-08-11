<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.CustomerDao"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>

<%
Customer auth = (Customer) request.getSession().getAttribute("auth");
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
<%@include file="Includes/navbar2.jsp" %>


<%String product_id = request.getParameter("id"); 
	request.getSession().setAttribute("id", product_id);

%>



<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center">Order form</div> 
		<div class= "card-body">
			<form action ="userorder2.jsp" method="post">
				<div class = "form-group">
					<label>Quantity</label>
					<input type="text" class="form-control" name = "quantity" placeholder="Enter quantity" required>
				</div>
				
				<div class="form-group"><h6>Coupon</h6>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="coupon"
				id="champange" value="ABC12345"> <label class="form-check-label"
				for="champange">- $20</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="coupon"
				id="gin" value="DEF23456"> <label class="form-check-label"
				for="gin"> - $10 </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="coupon"
				id="vodka" value="GHI34567"> <label class="form-check-label"
				for="vodka"> - $15 </label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="coupon"
				id="rum" value="JKL45678"> <label class="form-check-label"
				for="rum"> - $25 </label>
		</div>
</div>
<div class="form-group"><h6>Payment Method</h6>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="payment_method"
				id="Credit Card" value="Credit Card"> <label class="form-check-label"
				for="Credit Card">Credit Card</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="payment_method"
				id="Cash" value="Cash"> <label class="form-check-label"
				for="Cash"> Cash </label>
		</div>
		
</div>
<div class="form-group"><h6>Delivery Method</h6>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="delivery_method"
				id="Express" value="Express"> <label class="form-check-label"
				for="Express">Express</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="delivery_method"
				id="Standard" value="Standard"> <label class="form-check-label"
				for="Standard"> Standard </label>
		</div>
		
</div>


<div class="form-group"><h6>Delivery Unit</h6>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="delivery_unit"
				id="Grab" value="Grab"> <label class="form-check-label"
				for="Grab">Grab</label>
		</div>
		<div class="form-check">
			<input class="form-check-input" type="radio" name="delivery_unit"
				id="GHTK" value="GHTK"> <label class="form-check-label"
				for="GHTK"> GHTK </label>
		</div>
		
</div>
						
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Order</button>
				</div>
				
			</form>
		</div>
	</div>

</div>


<%@include file="Includes/Footer.jsp" %>
</body>
</html>