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
<%@include file="Includes/nav.jsp" %>


<div class= "container">

<table class="table table-light">
  <thead>
    <tr>
       <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Address</th>
      <th scope="col">Phone</th>
      <th scope="col">Mail</th>
    </tr>
  </thead>
  <tbody>
  <tr>
 <% 			String ten = request.getParameter("name");
  				List<Customer> cs = cd.getCustomerbyname(ten);
  			 if (!cs.isEmpty()) {
				for (Customer c : cs) { 	%> 
			
			<td><%=c.getId() %></td>
  			<td><%=c.getName() %></td>
  			<td><%=c.getAddress() %></td>
  			<td><%=c.getPhone() %></td>
  			<td><%=c.getMail() %></td>
  			 <td><%=c.getPassword() %></td>
  			
  				
				
				
				
				
		<% }
				}
			%>
  		
  		
  		
  </tr>
  </tbody>
</table>
<form action ="cart.jsp" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Back</button>
				</div>
			</form>
</div>





<%@include file="Includes/Footer.jsp" %>
</body>
</html>