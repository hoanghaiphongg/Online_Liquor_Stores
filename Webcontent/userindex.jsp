<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.ProductDao"%>
<%@page import="java.util.*"%>

<%
	Customer auth = (Customer) request.getSession().getAttribute("auth");
	if(auth!=null){
		request.setAttribute("auth", auth);
	}
	ProductDao pd= new ProductDao(DbCon.getConnection());
	List<Product> products = pd.getAllProducts();	
%>
    
<!DOCTYPE html>
<html>
<head>
<title>Welcome to shopping cart</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>
<%@include file="Includes/navbar2.jsp" %>
	<div class = "container">
		<div class = "card-header my-3">All Wine</div>
		<div class = "row">
			<% if (!products.isEmpty()) {
				for (Product p : products) {%>
					<div class = "col-md-3 my-3">

					<div class="card w-100 square" style="width: 18rem;">
	  					<img class="card-img-top" src="<%=p.getImage() %>" alt="Card image cap">
	  					<div class="card-body">
	    				<h5 class="card-title"><%=p.getName() %></h5>
	    									
	    				    				<h6 class="price">Price: $<%=p.getPrice() %></h6>
	    										
	    				    				
	    				    				<% if(p.getBrand().equals("CC000001")){%>
	    				    					<h6 class="Brand">Champange</h6>
	    				    				<%} %>
	    				    				
	    				    				<% if(p.getBrand().equals("CC000002")){%>
	    				    				     <h6 class="Brand">Gin</h6>
	    				    						
	    				    				
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000003")){%>
	    				    				    <h6 class="Brand">Vodka</h6>
	    				    				      
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000004")){%>
	    				    				    <h6 class="Brand">Rum</h6>
	    				    					
	    				    				<%} %>
	    				    				
	    				    			     <h6 class="quantity">Quantity: <%=p.getQuantity() %></h6>
	    				    				
	    									<div class="mt-3 d-flex justify-content-between">
	    									    				
	       									    				
	    									    				
	    									
	    				</div>
	  					</div>
						</div>
						</div>
				<% }
				}
			%>
			
		</div>
	</div>
<%@include file="Includes/Footer.jsp" %>
</body>
</html>