package com.user.servlet;

import java.io.IOException;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		UserDao dao=new UserDao(DBConnect.getConn());
		User user=dao.login(email, password);
		if(user!=null) {
			session.setAttribute("userObj", user);
			response.sendRedirect("index.jsp");
		}else {
			
			  session.setAttribute("errorMsg", "Invalid email & password");
			  response.sendRedirect("user_login.jsp");
			 
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
