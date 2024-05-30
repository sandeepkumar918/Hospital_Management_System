package com.user.servlet;

import java.io.IOException;

import com.dao.AppointmentDao;
import com.db.DBConnect;
import com.entity.Appointment;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
public AppointmentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int userId=Integer.parseInt(request.getParameter("userid"));
		String fullname=request.getParameter("fullname");
		String gender=request.getParameter("gender");
		String age=request.getParameter("age");
		String appoint_date=request.getParameter("appoint_date");
		String email=request.getParameter("email");
		String phno=request.getParameter("phno");
		String diseases=request.getParameter("diseases");
		int doctor_id=Integer.parseInt(request.getParameter("doct"));
		String address=request.getParameter("address");
		Appointment ap=new Appointment(userId,fullname,gender,age,appoint_date,email,phno,diseases,doctor_id,address,"pending");
		AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
		HttpSession session=request.getSession();
		if(dao.addAppointment(ap)) {
			session.setAttribute("succMsg", "Appointment Successfully");
			response.sendRedirect("user_appointment.jsp");
		}else {
			session.setAttribute("errorMsg", "Something Error on Server");
			response.sendRedirect("user_appointment.jsp");
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
