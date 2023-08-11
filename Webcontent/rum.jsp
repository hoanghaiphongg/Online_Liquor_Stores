<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.ProductDao"%>
<%@page import="java.util.*"%>

<%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth!=null){
		request.setAttribute("auth", auth);
	}
	ProductDao pd= new ProductDao(DbCon.getConnection());
	String str;

%>
    
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>

<%@include file="Includes/navbar.jsp" %>

<div class="container">
	<div class = "card-header my-3"></div>

	
</div>
		<%String category = "rum"; %>
		<%String chui = request.getParameter("chui"); %>
		
		<% if(category.equals("champange")){ %>
				<% List<Product> products = pd.getAllProductschampange();%>
				<div class = "container">
		<div class = "row">
			<% if (!products.isEmpty()) {
				for (Product p : products) {%>
					<div class = "col-md-3 my-3">

					<div class="card w-100 square" style="width: 18rem;">
	  					<img class="card-img-top" src="<%=p.getImage() %>" alt="Card image cap">
	  					<div class="card-body">
	  						  							<%str = p.getId(); %>
	  					
	    				<h5 class="card-title"><%=p.getName() %></h5>
	    					    							
	    				
	    				    				<h6 class="price">Price: $<%=p.getPrice() %></h6>
	    				
	    				    				<% if(p.getBrand().equals("CC000001")){%>
	    				    					<h6 class="Brand">Category: Champange</h6>
	    				    				<%} %>
	    				    				
	    				    				<% if(p.getBrand().equals("CC000002")){%>
	    				    				     <h6 class="Brand">Category: Gin</h6>
	    				    						
	    				    				
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000003")){%>
	    				    				    <h6 class="Brand">Category: Vodka</h6>
	    				    				      
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000004")){%>
	    				    				    <h6 class="Brand">Category: Rum</h6>
	    				    					
	    				    				<%} %>
	    				    				
	    				    			    
	    				    				
	    				    				 <h6 class="quantity">Quantity: <%=p.getQuantity() %></h6>
	    				    				
	    				    				
	    									<h6 >ID:<form action="Delete.jsp" method="post">
	    												<input class=" " type=" "  name="id"
															id="id" value=<%=str %>> 
	    												 
	    												<div class="card w-50 mx-auto my-5"">
																<button type="submit" class="btn btn-danger">Delete</button>
														</div>
	    										
	    										</form>
	    					    			</h6>
	  					</div>
						</div>
						</div>
				<% }
				}
			%>
			
		</div>
	</div>
				
		<%} %>		
		<%if(category.equals("gin")){ %>
					<% List<Product> products = pd.getAllProductsgin();%>
						<div class = "container">
		<div class = "row">
			<% if (!products.isEmpty()) {
				for (Product p : products) {%>
					<div class = "col-md-3 my-3">

					<div class="card w-100 square" style="width: 18rem;">
	  					<img class="card-img-top" src="<%=p.getImage() %>" alt="Card image cap">
	  					<div class="card-body">
	  						  							<%str = p.getId(); %>
	  					
	    				<h5 class="card-title"><%=p.getName() %></h5>
	    					    							
	    				
	    				    				<h6 class="price">Price: $<%=p.getPrice() %></h6>
	    				
	    				    				<% if(p.getBrand().equals("CC000001")){%>
	    				    					<h6 class="Brand">Category: Champange</h6>
	    				    				<%} %>
	    				    				
	    				    				<% if(p.getBrand().equals("CC000002")){%>
	    				    				     <h6 class="Brand">Category: Gin</h6>
	    				    						
	    				    				
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000003")){%>
	    				    				    <h6 class="Brand">Category: Vodka</h6>
	    				    				      
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000004")){%>
	    				    				    <h6 class="Brand">Category: Rum</h6>
	    				    					
	    				    				<%} %>
	    				    			    
	    				    			      <h6 class="quantity">Quantity: <%=p.getQuantity() %></h6>
	    				    				
	    				    				
	    				    				
	    									<h6 >ID:<form action="Delete.jsp" method="post">
	    												<input class=" " type=" "  name="id"
															id="id" value=<%=str %>> 
	    												 
	    												<div class="card w-50 mx-auto my-5"">
																<button type="submit" class="btn btn-danger">Delete</button>
														</div>
	    										
	    										</form>
	    					    			</h6>
	  					</div>
						</div>
						</div>
				<% }
				}
			%>
			
		</div>
	</div>
						
					
		<%} %>
		<%if(category.equals("vodka")){ %>
					<% List<Product> products = pd.getAllProductsvodka();%>
						<div class = "container">
		<div class = "row">
			<% if (!products.isEmpty()) {
				for (Product p : products) {%>
					<div class = "col-md-3 my-3">

					<div class="card w-100 square" style="width: 18rem;">
	  					<img class="card-img-top" src="<%=p.getImage() %>" alt="Card image cap">
	  					<div class="card-body">
	  						  							<%str = p.getId(); %>
	  					
	    				<h5 class="card-title"><%=p.getName() %></h5>
	    					    									
	    				
	    				    				<h6 class="price">Price: $<%=p.getPrice() %></h6>
	    				
	    				    				<% if(p.getBrand().equals("CC000001")){%>
	    				    					<h6 class="Brand">Category: Champange</h6>
	    				    				<%} %>
	    				    				
	    				    				<% if(p.getBrand().equals("CC000002")){%>
	    				    				     <h6 class="Brand">Category: Gin</h6>
	    				    						
	    				    				
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000003")){%>
	    				    				    <h6 class="Brand">Category: Vodka</h6>
	    				    				      
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000004")){%>
	    				    				    <h6 class="Brand">Category: Rum</h6>
	    				    					
	    				    				<%} %>
	    				    				
	    				    			    
	    				    				
	    				    		        <h6 class="quantity">Quantity: <%=p.getQuantity() %></h6>
	    				    				
	    				    				
	    									<h6 >ID:<form action="Delete.jsp" method="post">
	    												<input class=" " type=" "  name="id"
															id="id" value=<%=str %>> 
	    												 
	    												<div class="card w-50 mx-auto my-5"">
																<button type="submit" class="btn btn-danger">Delete</button>
														</div>
	    										
	    										</form>
	    					    			</h6>
	  					</div>
						</div>
						</div>
				<% }
				}
			%>
			
		</div>
	</div>
						
					
		<%} %>
		<%if(category.equals("rum")){ %>
					
						<% List<Product> products = pd.getAllProductsrum();%>
						
						<div class = "container">
		<div class = "row">
			<% if (!products.isEmpty()) {
				for (Product p : products) {%>
					<div class = "col-md-3 my-3">

					<div class="card w-100 square" style="width: 18rem;">
	  					<img class="card-img-top" src="<%=p.getImage() %>" alt="Card image cap">
	  					<div class="card-body">
	  						  							<%str = p.getId(); %>
	  					
	    				<h5 class="card-title"><%=p.getName() %></h5>
	    					    									
	    				
	    				    				<h6 class="price">Price: $<%=p.getPrice() %></h6>
	    				
	    				    				<% if(p.getBrand().equals("CC000001")){%>
	    				    					<h6 class="Brand">Category: Champange</h6>
	    				    				<%} %>
	    				    				
	    				    				<% if(p.getBrand().equals("CC000002")){%>
	    				    				     <h6 class="Brand">Category: Gin</h6>
	    				    						
	    				    				
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000003")){%>
	    				    				    <h6 class="Brand">Category: Vodka</h6>
	    				    				      
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000004")){%>
	    				    				    <h6 class="Brand">Category: Rum</h6>
	    				    					
	    				    				<%} %>
	    				    				
	    				    			    
	    				    					    				    			     <h6 class="quantity">Quantity: <%=p.getQuantity() %></h6>
	    				    				
	    				    				
	    				    				
	    									<h6 >ID:<form action="Delete.jsp" method="post">
	    												<input class=" " type=" "  name="id"
															id="id" value=<%=str %>> 
	    												 
	    												<div class="card w-50 mx-auto my-5"">
																<button type="submit" class="btn btn-danger">Delete</button>
														</div>
	    										
	    										</form>
	    					    			</h6>
	  					</div>
						</div>
						</div>
				<% }
				}
			%>
			
		</div>
	</div>
						
					
		<%} %>		
	
<%@include file="Includes/Footer.jsp" %>
</body>
</html>