<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="img/home_care.png" type="image/x-icon">
<title>Comment</title>
<%@page import="com.entity.Appointment"%>
<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
	.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
	}
	.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("../img/hospital.jpg");
	height: 200px;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
	background-position: center;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	 <c:if test="${empty doctObj }">
	<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if> 
	<div class="container-fulid backImg p-5">
		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card paint-card">
					<div class="card-body">
						<p class="text-center fs-4">Patient Comment</p>
						<%
							int id=Integer.parseInt(request.getParameter("id"));
							AppointmentDao dao=new AppointmentDao(DBConnect.getConn());
							Appointment ap=dao.getAppointmentById(id);
						%>
						<form class="row" action="../UpdateStatus" method="post">
							<div class="col-md-6">
								<label>Patient Name</label><input type="text" readonly value="<%=ap.getFullName() %>" class="form-control">
							</div>
							<div class="col-md-6">
								<label>Age</label><input type="text" readonly value="<%=ap.getAge() %>" class="form-control">
							</div>
							<div class="col-md-6">
								<label>Mob No</label><input type="text" readonly value="<%=ap.getPhNo() %>" class="form-control">
							</div>
							<div class="col-md-6">
								<label>Diseases</label><input type="text" readonly value="<%=ap.getDiseases() %>" class="form-control">
							</div>
							<div class="col-md-12">
								<br><label>Comment</label>
								<textarea required rows="3" cols="" name="comm" class="form-control"></textarea>
							</div>
							<input type="hidden" name="id" value="<%=ap.getId()%>">
							<input type="hidden" name="did" value="<%=ap.getDoctorId()%>">
							<button class="mt-3 btn btn-primary col-md-6 offset-md-3">Submit</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>