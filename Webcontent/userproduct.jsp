<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.ProductDao"%>
<%@page import="java.util.*"%>
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
	ProductDao pd= new ProductDao(DbCon.getConnection());
	List<Product> products = pd.getAllProducts();	
	String str;
%>
    
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>

<%@include file="Includes/navbar2.jsp" %>

<div class="container">
	<div class = "card-header my-3"></div>

	<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Category
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    <a class="dropdown-item" href="userchampange.jsp">Champange</a>
    <a class="dropdown-item" href="usergin.jsp">Gin</a>
       <a class="dropdown-item" href="uservodka.jsp">Vodka</a>
       <a class="dropdown-item" href="userrum.jsp">Rum</a>
   
  </div>
</div>
</div>


	<div class = "container">
		<div class = "row">
			<% if (!products.isEmpty()) {
				for (Product p : products) {%>
					<div class = "col-md-3 my-3">

					<div class="card w-100 square" style="width: 18rem;">
	  					<img class="card-img-top" src="<%=p.getImage() %>" alt="Card image cap">
	  					<div class="card-body">
	  							<%str = p.getId();	  							
	  							
	  							
	  							%>
	  							
	  					
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
	    				    				
	    				    				<h6 >ID:<form action="userorder.jsp" method="post">
	    												<input class=" " type=" "  name="id"
															id="id" value=<%=str %>> 
	    												 
	    												<div class="card w-50 mx-auto my-5"">
																<button type="submit" class="btn btn-danger">Order</button>
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
<%@include file="Includes/Footer.jsp" %>
</body>
</html>