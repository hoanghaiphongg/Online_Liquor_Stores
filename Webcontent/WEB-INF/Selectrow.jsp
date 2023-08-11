<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Select row</title>
</head>
<body>
<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center">User Login</div> 
		<div class= "card-body">
			<form action ="login.jsp" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Admin</button>
				</div>
			</form>
			<form action ="loginuser.jsp" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">User</button>
				</div>
			</form>
		</div>
	</div>
	
	
</body>
</html>