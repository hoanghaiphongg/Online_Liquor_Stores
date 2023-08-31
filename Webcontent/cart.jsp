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

</div>





<%@include file="Includes/Footer.jsp" %>
</body>
</html>