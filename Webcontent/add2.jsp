<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.CustomerDao"%>
<%@page import="cn.techtutorial.dao.ProductDao"%>
<%@page import="java.util.*"%>
<%@page import="ranstring.rand"%>

<%
	User auth = (User) request.getSession().getAttribute("auth");
	if(auth!=null){
		request.setAttribute("auth", auth);
	}
	ProductDao pd= new ProductDao(DbCon.getConnection());
	rand r = new rand();

%>
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>
<%@include file="Includes/navbar.jsp" %>



<%int rsu;
String product_id = r.generateRandomString(8);
String brand = request.getParameter("brand");
String pr = request.getParameter("price");
double price = Double.parseDouble(pr);
String description = request.getParameter("description");
String title = request.getParameter("title");
String images = request.getParameter("images");
String dis = request.getParameter("discount");
int  discount = Integer.parseInt(dis);
String pis = request.getParameter("product_in_stock");
int  product_in_stock = Integer.parseInt(pis);
String category_id = request.getParameter("category_id");


%>
<%   rsu=pd.insert_new_product(product_id,brand,price,description,title,images,discount,product_in_stock,category_id); %>





<%if(rsu!=0){%>

<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center"></div> 
		<div class= "card-body">
				<div class = "form-group text-center">
					<strong><p style="color: green;">SUCCESSFULLY ADDED A NEW Product !!</p></strong>	
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
	

</div>


						<form action ="index.jsp" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Back</button>
				</div>
			</form>




<%@include file="Includes/Footer.jsp" %>
</body>
</html>