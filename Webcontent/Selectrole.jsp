<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select row</title>
<%@include file="Includes/head.jsp" %>

</head>
<body>
<%@include file="Includes/navbar3.jsp" %>

<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<strong><div class= "card-header text-center">SELECT ROLE</div> </strong>
		<div class= "card-body"><div class="container"><form action ="login.jsp" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Admin</button>
				</div>
			</form></div></div>
			
				<div class= "card-body"><div class="container"><form action ="loginuser.jsp" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Users</button>
				</div>
			</form></div></div>
		
		
				
		
			
			
	</div>
	</div>
<%@include file="Includes/Footer.jsp" %>

</body>
</html>