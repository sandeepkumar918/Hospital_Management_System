
<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.entity.Specialist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DBConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="img/home_care.png" type="image/x-icon">
<title>Edit Profile</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
	.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp" %>
	<c:if test="${empty doctObj }">
	<c:redirect url="../doctor_login.jsp"></c:redirect>
	</c:if>
	<div class="container p-4">
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
						<p class="text-center fs-3">Change Password</p>
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsgd" scope="session"/>
						</c:if>
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-success fs-3">${errorMsg}</p>
							<c:remove var="errorMsgd" scope="session"/>
						</c:if>
						<div class="card-body">
							<form action="../DoctorPasswordChange" method="post">
								<div class="mb-3">
									<label>Enter New Password</label><input type="text" name="newPassword" class="form-control" required>
								</div>
								<div class="mb-3">
									<label>Enter Old Password</label><input type="text" name="oldPassword" class="form-control" required>
								</div>
								<input type="hidden" value="${doctObj.id }" name="uid">
								<button class="btn btn-success col-md-12">Change Password</button>
							</form>
						</div>
				</div>		
			</div>
			<div class="col-md-5 offset-md-2">
				<div class="card paint-card">
				<p class="text-center fs-3">Edit Profile</p>
				<c:if test="${not empty sucMsgd }">
							<p class="text-center text-success fs-3">${sucMsgd}</p>
							<c:remove var="sucMsgd" scope="session"/>
						</c:if>
						<c:if test="${not empty errorMsgd }">
							<p class="text-center text-success fs-3">${errorMsgd}</p>
							<c:remove var="errorMsgd" scope="session"/>
						</c:if> 
					<div class="card-body">
						<form action="../EditProfile?id=${doctObj.id }" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									required name="fullname" class="form-control" value="${doctObj.fullName }">
							</div>

							<div class="mb-3">
								<label class="form-label">DOB</label> <input type="date"
									required name="dob" class="form-control" value="${doctObj.dob }">
							</div>

							<div class="mb-3">
								<label class="form-label">Qualification</label> <input required
									name="qualification" type="text" class="form-control" value="${doctObj.qualification }">
							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label> <select name="spec"
									required class="form-control">
									<option>${doctObj.specialist }</option>

									<%
									SpecialistDao dao = new SpecialistDao(DBConnect.getConn());
									List<Specialist> list = dao.getAllSpecialist();
									for (Specialist s : list) {
									%>
									<option><%=s.getSpecialistName()%></option>
									<%
									}
									%>


								</select>
							</div>

							<div class="mb-3">
								<label class="form-label">Email</label> <input type="text"
									required name="email" class="form-control" value="${doctObj.email }" readonly>
							</div>

							<div class="mb-3">
								<label class="form-label">Mob No</label> <input type="text"
									required name="mobno" class="form-control" value="${doctObj.mobNo }">
							</div>
							<input type="hidden" value="1">
							<button type="submit" class="btn btn-primary">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>