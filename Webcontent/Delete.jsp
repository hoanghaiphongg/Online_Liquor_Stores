<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.CustomerDao"%>
<%@page import="cn.techtutorial.dao.ProductDao"%>
<%@page import="java.util.*"%>
<%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth!=null){
		request.setAttribute("auth", auth);
	}
	ProductDao pd= new ProductDao(DbCon.getConnection());
%>
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>
<%@include file="Includes/navbar.jsp" %>


<%String Id = request.getParameter("id"); %>

<%int rsu; %>
<%rsu=pd.deleteproduct(Id); %>





<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center"></div> 
		<div class= "card-body">
				<div class = "form-group text-center">
					<strong><p style="color: green;">Deleted Product !!</p></strong>	
					
							
					
				</div>
		</div>
					
	</div>
	

</div>


						<form action ="product.jsp" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Back</button>
				</div>
			</form>
</div>




<%@include file="Includes/Footer.jsp" %>
</body>
</html>