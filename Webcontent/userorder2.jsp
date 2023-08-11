<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.CustomerDao"%>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="javax.servlet.http.HttpServlet"%>
<%@page import="javax.servlet.http.HttpServletRequest"%>
<%@page import="javax.servlet.http.HttpServletResponse"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@page import="ranstring.rand"%>
<%@page import="cn.techtutorial.dao.OrderDao"%>



<%
Customer auth = (Customer) request.getSession().getAttribute("auth");
if(auth!=null){
	request.setAttribute("auth", auth);
}
OrderDao ord= new OrderDao(DbCon.getConnection());
rand r = new rand();

%>
<!DOCTYPE html>
<html>
<head>
<title>Order</title>
<%@include file="Includes/head.jsp" %>
</head>
<body>
<%@include file="Includes/navbar2.jsp" %>

<%

String q = request.getParameter("quantity");
int  quantity = Integer.parseInt(q);
String coupon_id = request.getParameter("coupon");
String pay_method = request.getParameter("payment_method");
String deli_method = request.getParameter("delivery_method");
String deli_unit = request.getParameter("delivery_unit");
String email = (String) request.getSession().getAttribute("e");
String product_id = (String) request.getSession().getAttribute("id");
String order_id = r.generateRandomString(8);


int rsu = ord.insert_order(quantity,coupon_id,pay_method,deli_method,deli_unit,email,product_id,order_id);


%>






<%






%>


<div class= "container">
	<div class = "card w-50 mx-auto my-5">
		<div class= "card-header text-center"></div> 
		<div class= "card-body">
											<strong><p style="color: green;">SUCCESSFULLY ORDERED A PRODUCT !!</p></strong>	
						
		</div>
	</div>

</div>
					<form action ="usermyorder.jsp" method="post">
				<div class="text-center">
					<button type="submit" class="btn btn-primary">Back</button>
				</div>
			</form>
					


<%@include file="Includes/Footer.jsp" %>
</body>
</html>