<%@page import="com.db.DBConnect"%>
<%@page import="java.sql.Connection" %>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="shortcut icon" href="img/home_care.png" type="image/x-icon">
<title>Medi Home</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%> 
	<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/hos1.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos2.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos3.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos4.jpeg" class="d-block w-100" alt="..." height="500px">
    </div>
    <div class="carousel-item">
      <img src="img/hos5.jpg" class="d-block w-100" alt="..." height="500px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<div class="container p-3">
	<p class="text-center fs-2">Key Features of our Hospital</p>
<div class="row">
  <div class="col-sm-6">
    <div class="card">
    <div class="card paint-card">
      <div class="card-body">
        <h5 class="card-title">Patient-Centric Approach</h5>
        <p class="card-text">The best hospitals always prioritize the patients comfort and convenience at each stage of their journey. A good hospital should focus on making the patient’s experience as seamless as possible, right from appointment booking to discharge. It is crucial to provide patients with all the necessary information that will help them make their decision faster.</p>
      </div>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
    <div class="card paint-card">
      <div class="card-body">
        <h5 class="card-title">Cutting-Edge Technology</h5>
        <p class="card-text">One of the most significant factors that distinguish a top-notch hospital from an average one is its ability to integrate the latest technology. Technology has revolutionized several aspects of healthcare, making it more affordable, risk-free, and fast. For instance, the use of robotics has simplified many complicated and time-consuming surgeries. In addition, the use of state-of-the-art testing equipment ensures that the results are accurate and error-free.</p>
      </div>
      </div>
    </div>
  </div>
</div>
<div class="row">
  <div class="col-sm-6">
    <div class="card">
    <div class="card paint-card">
      <div class="card-body">
        <h5 class="card-title">Transparent Pricing</h5>
        <p class="card-text">In recent times, patients have become increasingly aware of their rights. As patients start shouldering more of their healthcare costs, they are likely to look for more affordable options. Thus, it is crucial for hospitals to create a transparent pricing structure that is readily available to the patients. It instills faith in patients and makes them confident about selecting your hospital for their treatment.</p>
      </div>
      </div>
    </div>
  </div>
  <div class="col-sm-6">
    <div class="card">
    <div class="card paint-card">
      <div class="card-body">
        <h5 class="card-title">Coordinated Care</h5>
        <p class="card-text">The seamless functioning of a great hospital depends on the coordination and internal communication between various departments. It ensures that patients have a stress-free experience at every stage, right from the admission to post-operative rehabilitation. Thus, it is crucial for hospitals to develop standardized care paths for the most common health conditions.</p>
      </div>
      </div>
    </div>
  </div>
</div>
</div>
<hr>
	<div class="container p-2">
	<p class="text-center fs-2">Our Team</p>
	<div class="row row-cols-1 row-cols-md-4 g-4">
  <div class="col">
    <div class="card">
    <div class="card paint-card">
      <img src="img/doc1.jpg" class="card-img-top" alt="..." width="250px" height="300px">
      <div class="card-body">
        <h5 class="card-title">Dr. Swain</h5>
        <p class="card-text">(CEO & Chairman)</p>
      </div>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
    <div class="card paint-card">
      <img src="img/doc2.jpg" class="card-img-top" alt="..." width="250px" height="300px">
      <div class="card-body">
        <h5 class="card-title">Dr. Siva Kumar</h5>
        <p class="card-text">(Chief Doctor)</p>
      </div>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
    <div class="card paint-card">
      <img src="img/doc3.jpg" class="card-img-top" alt="..." width="250px" height="300px">
      <div class="card-body">
        <h5 class="card-title">Dr. Niuise Paule</h5>
        <p class="card-text">(Chief Doctor)</p>
      </div>
      </div>
    </div>
  </div>
  <div class="col">
    <div class="card">
    <div class="card paint-card">
      <img src="img/doc4.jpg" class="card-img-top" alt="..." width="250px" height="300px">
      <div class="card-body">
        <h5 class="card-title">Dr. Mathue Samuel</h5>
        <p class="card-text">(Chief Doctor)</p>
      </div>
      </div>
    </div>
  </div>
</div>
</div>
<%@include file="component/footer.jsp"%>
</body>
</html>
