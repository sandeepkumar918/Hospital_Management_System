package com.doctor.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class DoctorLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DoctorLogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		HttpSession session=request.getSession();
		
		DoctorDao dao=new DoctorDao(DBConnect.getConn());
		Doctor doctor=dao.login(email, password);
		
		if(doctor!=null) {
			session.setAttribute("doctObj", doctor);
			response.sendRedirect("doctor/index.jsp");
		}else {
			session.setAttribute("errorMsg", "Invalid email or password");
			response.sendRedirect("doctor_login.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
