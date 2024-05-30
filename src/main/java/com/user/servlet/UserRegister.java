package com.user.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;
//@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UserRegister() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String fullName=request.getParameter("fullname");
			String email=request.getParameter("email");
			String password=request.getParameter("password");
			User u=new User(fullName,email,password); 
			 UserDao dao=new
			 UserDao(DBConnect.getConn()); 
			 boolean f=dao.register(u); if(f) {
			 System.out.println("Register Successfully"); }else {
			 System.out.println("Somthing Error"); }
			 
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
