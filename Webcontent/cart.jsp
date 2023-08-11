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
	List<Customer> cs = cd.getAllCustomer();
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
<form action ="cart2.jsp" method="post">
				<div class = "form-group row">
					<label>Find Customer</label>
					<input type="text" class="form-control" name = "name" placeholder="Enter customer's name">
				</div>
				<div class="form-group row">
	   				<button type="submit" class="btn btn-primary">Find</button>
	  			</div>
</form>

<table class="table table-light">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      <th scope="col">Address</th>
      <th scope="col">Phone</th>
      <th scope="col">Mail</th>
      <th scope="col">Password</th>
    </tr>
  </thead>
  <tbody>
  
  
  		<% if (!cs.isEmpty()) {
				for (Customer c : cs) {%>
			<tr>
			<td><%=c.getId() %></td>
  			<td><%=c.getName() %></td>
  			<td><%=c.getAddress() %></td>
  			<td><%=c.getPhone() %></td>
  			<td><%=c.getMail() %></td>
  			 <td><%=c.getPassword() %></td>
  			
  				
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