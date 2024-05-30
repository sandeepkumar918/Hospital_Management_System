package com.admin.servlet;

import java.io.IOException;

import com.dao.DoctorDao;
import com.db.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class DeleteDoctor extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public DeleteDoctor() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));
		DoctorDao dao=new DoctorDao(DBConnect.getConn());
		HttpSession session=request.getSession();
		if(dao.deleteDoctor(id)) {
			
			  session.setAttribute("succMsg", "Doctor Delete Successfully..");
			  response.sendRedirect("admin/view_doctor.jsp");
			 
		}else {
			
			  session.setAttribute("errorMsg", "Something Error on Server");
			  response.sendRedirect("admin/view_doctor.jsp");
			 
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
