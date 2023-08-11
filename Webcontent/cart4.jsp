<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.CustomerDao"%>
<%@page import="java.util.*"%>
<%@page import="ranstring.rand"%>

<%

	CustomerDao cd= new CustomerDao(DbCon.getConnection());
	rand r = new rand();


%>
<!DOCTYPE html>
<html>
<head>
<title>Customer</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>
<%@include file="Includes/navbar3.jsp" %>

<%
String id = r.generateRandomString(8);
String name = request.getParameter("name");
String phone = request.getParameter("phone");
String address = request.getParameter("address");
String gender = request.getParameter("gender");
String dob = request.getParameter("dob");
String email = request.getParameter("email");
String password = request.getParameter("password");
	int rsu=cd.insert_new_customer(id,name,phone,address,gender,dob,email,password);

	if(rsu!=0){
%>

<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center"></div> 
		<div class= "card-body">
				<div class = "form-group text-center">
					<strong><p style="color: green;">SUCCESSFULLY ADDED A NEW USER !!</p></strong>	
				</div>
		</div>
	</div>

</div>

<% }else { %>

<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center"></div> 
		<div class= "card-body">
				<div class = "form-group text-center">
					<strong><p style="color: red;"> Id already exists !!</p></strong>	
				</div>
		</div>
	</div>

</div>
<%} %>

<form action ="loginuser.jsp" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Done</button>
				</div>
			</form>
</div>


<%@include file="Includes/Footer.jsp" %>
</body>
</html>