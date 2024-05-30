package com.admin.servlet;

import java.io.IOException;

import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		if("admin@gmail.com".equals(email) && "admin".equals(password)) {
			session.setAttribute("adminObj", new User());
			response.sendRedirect("admin/index.jsp");
		}else {
			
			 session.setAttribute("errorMsg", "Invalid email & password");
			 response.sendRedirect("admin_login.jsp");
			
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
