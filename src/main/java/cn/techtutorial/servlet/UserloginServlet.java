package cn.techtutorial.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.techtutorial.connection.DbCon;
import cn.techtutorial.dao.*;
import cn.techtutorial.model.*;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/user-login2")
public class UserloginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.sendRedirect("loginuser.jsp");
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		try(PrintWriter out = response.getWriter()){
			String email =request.getParameter("Login Email");
			String password =request.getParameter("Login password");
			request.getSession().setAttribute("e", email);
			request.getSession().setAttribute("p", password);


			try {
				CustomerDao c = new CustomerDao(DbCon.getConnection());
				Customer cus = c.customerLogin(email, password);
				
				if (cus != null) {
					request.getSession().setAttribute("auth", cus);
//					System.out.print("user logged in");
					response.sendRedirect("userindex.jsp");
				} else {
					out.println("login failed");
				}
				
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}

		}
	}

}
