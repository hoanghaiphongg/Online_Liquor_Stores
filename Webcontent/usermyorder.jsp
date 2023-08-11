<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.OrderDao"%>
<%@page import="java.util.*"%>
<%@page import="cn.techtutorial.dao.PriceDao"%>

<%
	Customer auth = (Customer) request.getSession().getAttribute("auth");
	if(auth!=null){
		request.setAttribute("auth", auth);
	}
	OrderDao ord= new OrderDao(DbCon.getConnection());
	
	String email = (String) request.getSession().getAttribute("e");
	String password = (String) request.getSession().getAttribute("p");
	List<Order> o = ord.getOrderbyemail(email);
	PriceDao pr= new PriceDao(DbCon.getConnection());

%>
<!DOCTYPE html>
<html>
<head>
<title>Order</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>
<%@include file="Includes/navbar2.jsp" %>

<div class= "container">
		<div class = "card-header my-3">My Order</div>


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