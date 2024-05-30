package com.doctor.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class DoctorPasswordChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DoctorPasswordChange() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int uid=Integer.parseInt(request.getParameter("uid"));
		String oldPassword=request.getParameter("oldPassword");
		String newPassword=request.getParameter("newPassword");
		DoctorDao dao=new DoctorDao(DBConnect.getConn());
		HttpSession session=request.getSession();
		if(dao.checkOldPassword(uid, oldPassword)) {
			if(dao.changePassword(uid, newPassword)) {
				session.setAttribute("sucMsgd", "Password Change Successfully");
				response.sendRedirect("doctor/edit_profile.jsp");
			}else {
				session.setAttribute("errorMsgd", "Something Error on Server");
				response.sendRedirect("doctor/edit_profile.jsp");
			}
		}else {
			session.setAttribute("errorMsgd", "Old Password Is Incorrect");
			response.sendRedirect("doctor/edit_profile.jsp");
		}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
