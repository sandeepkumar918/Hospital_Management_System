package com.admin.servlet;

import java.io.IOException;

import com.dao.SpecialistDao;
import com.db.DBConnect;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class AddSpecialist extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public AddSpecialist() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String specName=request.getParameter("specName");
		SpecialistDao dao=new SpecialistDao(DBConnect.getConn());
		boolean f=dao.addSpecialist(specName);
		HttpSession session=request.getSession();
		if(f) {
			session.setAttribute("succMsg", "Specialist Added");
			response.sendRedirect("admin/index.jsp");
		}else {
			
			 session.setAttribute("errorMsg", "Something Error");
			 response.sendRedirect("admin_login.jsp");
			
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
