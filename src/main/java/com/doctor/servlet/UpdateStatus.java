package com.doctor.servlet;

import java.io.IOException;

import com.dao.AppointmentDao;
import com.db.DBConnect;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class UpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public UpdateStatus() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			int id=Integer.parseInt(request.getParameter("id"));
			int did=Integer.parseInt(request.getParameter("did"));
			String comm=request.getParameter("comm");
			AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
			HttpSession session=request.getSession();
			if(dao.updateCommentStatus(id, did, comm)) {
				session.setAttribute("succMsg", "Comment Updated");
				response.sendRedirect("doctor/patient.jsp");
			}else {
				session.setAttribute("errorMsg", "Something Error on Server");
				response.sendRedirect("doctor/patient.jsp");
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
