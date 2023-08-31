<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="cn.techtutorial.model.*"%>

<%
	
%>
<!DOCTYPE html>
<html>
<head>
<title>Login page</title>
<%@include file="Includes/head.jsp" %>
<style>
        .modal{
    position: fixed;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background: #000000;
    display: flex;
    align-items: center;
    justify-content: center;
}
.modal-container{
    background-color: white;
    width: 900px;
    height: 400px;
    position: relative;
}
.modal-header{
    background: #009688;
    height: 130px;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    font-size: 30px;
}
.modal-bag{
    margin-right: 16px;
}
.modal-close{
    position: absolute;
    right: 0;
    color: #fff;
    padding: 12px;
    cursor: pointer;
}
.modal-body{
    padding: 16px;
}
.modal-label{
    display: block;
    font-size: 15px;
    margin-bottom: 12px;
}
.modal-input{
    border: 1px solid #ccc;
    width: 100%;
    padding: 10px;
    font-size: 15px;
    margin-bottom: 20px;
}
#buy-tickets{
    width: 100%;
    background-color: #009688;
    color: #fff;
    font-size: 15px;
    padding:10px;
}
#buy-tickets:hover{
    background-color: #ccc;
    color: #000;
}
.modal-help{
    text-align: right;
}
       
</style>
</head>
<body>
<%@include file="Includes/navbar3.jsp" %>



<div class="modal">
                <div class="modal-container">
                    <div class="modal-close">
                        <i class="ti-close"></i>
                    </div>
                    <header class="modal-header">
                        <i class="modal-bag ti-bag"></i>
                        Admin
                    </header>
                    <div class="modal-body">


				<form action ="user-login" method="post">
					<label for="" class="modal-label">
                            <i class="ti-shopping-cart"></i>
                            Email
                        </label>
					<input type="email" class="modal-input" name = "Login Email" placeholder="Enter Your Email" required>
				
				
						<label for="" class="modal-label">
                            <i class="ti-user"></i>
                            Password
                        </label>
                        <input type="password" class="modal-input" name = "Login password" placeholder="********" required>
					 <button id="buy-tickets">Login <i class="ti-check"> </i></button>
						
				
			</form>







                    </div>

                    

                </div>
                
</div>

<%@include file="Includes/Footer.jsp" %>
</body>
</html>