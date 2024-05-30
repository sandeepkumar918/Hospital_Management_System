package com.admin.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DBConnect;
import com.entity.Doctor;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class UpdateDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateDoctor() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String fullName=request.getParameter("fullname");
			String dob=request.getParameter("dob");
			String qualification=request.getParameter("qualification");
			String spec=request.getParameter("spec");
			String email=request.getParameter("email");
			String mobno=request.getParameter("mobno");
			String password=request.getParameter("password");
			int id=Integer.parseInt(request.getParameter("id"));
			Doctor d=new Doctor(id,fullName,dob,qualification,spec,email,mobno,password);
			DoctorDao dao=new DoctorDao(DBConnect.getConn());
			HttpSession session=request.getSession();
			if(dao.updateDoctor(d)) {
				
				  session.setAttribute("succMsg", "Doctor Update Successfully..");
				  response.sendRedirect("admin/view_doctor.jsp");
				 
			}else {
				
				  session.setAttribute("errorMsg", "Something Error on Server");
				  response.sendRedirect("admin/view_doctor.jsp");
				 
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
