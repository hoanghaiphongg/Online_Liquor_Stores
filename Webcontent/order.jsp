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
<style>
        .container{
        margin-top: 200px;
        font-size: 20px;
        }
       
</style>
</head>
<body>
<%@include file="Includes/nav.jsp" %>
 <div class="app">


<div class= "container">


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

</div>





<%@include file="Includes/Footer.jsp" %>
</body>
</html>