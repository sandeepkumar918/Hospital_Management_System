<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i class="fas fa-clinic-medical"></i> Medi Home</a>
		
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
			
			<c:if test="${empty userObj}"> 
			<li class="nav-item"><a class="nav-link active" aria-current="page" href="admin_login.jsp"><i class="fas fa-sign-in-alt"></i> ADMIN</a></li>
				<li class="nav-item"><a class="nav-link active" aria-current="page" href="doctor_login.jsp">DOCTOR</a></li>
				<!-- <li class="nav-item"><a class="nav-link active" aria-current="page" href="#">APPOINTMENT</a></li> -->
				<li class="nav-item"><a class="nav-link active" aria-current="page" href="user_login.jsp">USER</a></li>
			 	
			</c:if>
				
			 	
			 	<c:if test="${not empty userObj}">
			 		<li class="nav-item">
			 			<a class="nav-link active" aria-current="page" href="user_appointment.jsp">
			 				<i class="fas fa-sign-in-alt"></i> APPOINTMENT
			 			</a>
			 		</li>
					<li class="nav-item">
						<a class="nav-link active" aria-current="page" href="view_appointment.jsp">VIEW APPOINTMENT
						</a>
					</li>
					<div class="dropdown">
						<button class="btn btn-light dropdown-toggle" type="button"	id="dropdownMenuButton1" data-bs-toggle="dropdown"
							aria-expanded="false">${userObj.fullName }</button>
						<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
							<li><a class="dropdown-item" href="change_password.jsp">Change Password</a></li>
							<li><a class="dropdown-item" href="UserLogout">Logout</a></li>
						</ul>
					</div>
			 	</c:if>							 				
			</ul>



			<!-- <form class="d-flex">
				<div class="dropdown">
					<button class="btn btn-light dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">Admin</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="../adminLogout">Logout</a></li>
					</ul>
				</div>
			</form> -->
			
			
			
		</div>
	</div>
</nav>