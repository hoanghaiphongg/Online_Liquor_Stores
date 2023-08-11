<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.OrderDao"%>
<%@page import="java.util.*"%>
<%@page import="cn.techtutorial.dao.PriceDao"%>

<%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth!=null){
		request.setAttribute("auth", auth);
	}
	OrderDao ord= new OrderDao(DbCon.getConnection());
	PriceDao pr= new PriceDao(DbCon.getConnection());

	List<Order> o = ord.getAllOrder();
%>
<!DOCTYPE html>
<html>
<head>
<title>Order</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>
<%@include file="Includes/navbar.jsp" %>


<div class= "container">
<form action ="order2.jsp" method="post">
				<div class = "form-group row">
					<label>Find Order </label>
					<input type="text" class="form-control" name = "id" placeholder="Enter customer_id">
				</div>
				<div class="form-group row">
	   				<button type="submit" class="btn btn-primary">Find</button>
	  			</div>
</form>

<table class="table table-light">
  <thead>
    <tr>
      <th scope="col">order_id</th>
      <th scope="col">status</th>
      <th scope="col">order_date</th>
      <th scope="col">payment_method</th>
      <th scope="col">delivery_method</th>
      <th scope="col">delivery_unit</th>
      <th scope="col">delivery_cost</th>
      <th scope="col">customer_id</th>
      <th scope="col">coupon_id</th>
       <th scope="col">cost</th>
      
    </tr>
  </thead>
  <tbody>
  
  
  		<% if (!o.isEmpty()) {
				for (Order or : o) {
					 Price p = pr.getprice(or.getOrder_id()) ;
				
				%>
			<tr>
			<td><%=or.getOrder_id() %></td>
  			<td><%=or.getStatus() %></td>
  			<td><%=or.getOrder_date() %></td>
  			<td><%=or.getPayment_method() %></td>
  			<td><%=or.getDelivery_method() %></td>
  			 <td><%=or.getDelivery_unit() %></td>
  			   			 <td><%=or.getDelivery_cost() %></td>
  			   			 <td><%=or.getCustomer_id() %></td>
  			   			 <td><%=or.getCoupon_id() %></td>
  			   			 <td><strong><p style="color: green;">$<%=p.getPr() %></p></strong>	</td>
  			 
  			
  				
			</tr>	
				
				
				
		<% }
				}
			%>
  
  		
  </tbody>
</table>

</div>


			
</div>






<%@include file="Includes/Footer.jsp" %>
</body>
</html>