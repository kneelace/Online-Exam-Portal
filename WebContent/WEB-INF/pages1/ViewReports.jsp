<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE >
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<html>
<head>
<title>Student Reports</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link rel="stylesheet"
	href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />
<style>

.register {
	width: 70%;
	color: white;
}

body {
	background: #333;
}

button {
	width: 20%;
	margin: auto;
}
</style>
</head>

<body>
	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Welcome</h3>
				<strong>AI</strong>
			</div>

			<ul class="list-unstyled components">
				<!-- <li><a href="http://localhost:8090/bhaktiAceIt/"> <i
						class="fas fa-home"></i> Home
				</a></li> -->
				<%-- <li>
                    <a href="${pageContext.request.contextPath}/" >
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li> --%>
				<li><a href="createExam"> <i class="fa fa-plus-square"></i>
						Create Exam
				</a> <a href="removeQuestions" data-toggle="collapse"
					aria-expanded="false"> <i class="fa fa-minus"></i> Remove
						Questions
				</a></li>
				<li><a href="allocateByBatch"> <i class="fa fa-arrow-right"></i>
						Allocate By Batch
				</a></li>
				<li><a href="viewReports"> <i class="fa fa-arrow-right"></i>
						View Reports
				</a></li>
				<li><a href="logout"> <i class="fa fa-sign-out"></i> Logout
				</a></li>

			</ul>
		</nav>

		<!-- Page Content  -->
		<div id="content">

			<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fas fa-align-left"></i> <span>Admin Dashboard</span>
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-align-justify"></i>
					</button>

				</div>
			</nav>
			<div class="register">
				<h2>Generate Reports</h2>
				<form action="searchStudents" method="POST">
					<div class="form-group">
						<label for="technology">Technology</label> <select
							class="form-control" id="technology" name="technology"
							class="form-control">
							<option value="java">java</option>
							<option value="sql">sql</option>
							<option value="php">php</option>
							<option value="c/c++">c/c++</option>
							<option value="python">python</option>
							<option value="c#/.net">c#/.net</option>
						</select>
					</div>


					<div class="form-group">
						<label for="level">Level</label> <select class="form-control"
							id="level" name="level" class="form-control">
							<option value="l1">Level 1</option>
							<option value="l2">Level 2</option>
							<option value="l3">Level 3</option>
						</select>
					</div>
					<div class="form-group">
						State: <select name="state" class="form-control" id="state"
							class="form-control">
							<option value="maharashtra">Maharashtra</option>
							<option value="Gujarat">Gujarat</option>
							<option value="Himachal Pradesh">Himachal Pradesh</option>
							<option value="Andhra Pradesh">Andhra Pradesh</option>
							<option value="Arunachal Pradesh">Arunachal Pradesh</option>
							<option value="Assam">Assam</option>
							<option value="Bihar">Bihar</option>
							<option value="Chhattisgarh">Chhattisgarh</option>
							<option value="Goa">Goa</option>
							<option value="Haryana">Haryana</option>
							<option value="Himachal Pradesh">Himachal Pradesh</option>
							<option value="Jammu and Kashmir">Jammu and Kashmir</option>
							<option value="Jharkhand">Jharkhand</option>
							<option value="Karnataka">Karnataka</option>
							<option value="Kerala">Kerala</option>
							<option value="Madhya Pradesh">Madhya Pradesh</option>
							<option value="Punjab">Punjab</option>
							<option value="Rajasthan">Rajasthan</option>
							<option value="Tamil Nadu">Tamil Nadu</option>
						</select>
					</div>
					<br>
					<div class="form-group">
						City: <select name="city" class="form-control" id="city">
							<option value="mumbai">Mumbai</option>
							<option value="Pune">Pune</option>
							<option value="Nagpur">Nagpur</option>
							<option value="Nashik">Nashik</option>
							<option value="Thane">Thane</option>
							<option value="Bangalore">Bangalore</option>
							<option value="Chennai">Chennai</option>
							<option value="Kolkata">Kolkata</option>
							<option value="New Delhi">New Delhi</option>
							<option value="Bhopal">Bhopal</option>
							<option value="Agra">Agra</option>
							<option value="Surat">Surat</option>
							<option value="Rajkot">Rajkot</option>
							<option value="Jodhpur">Jodhpur</option>
							<option value="Jaipur">Jaipur</option>
							<option value="Ludhiyana">Ludhiyana</option>
						</select> <br>
					</div>

					<button type="submit" class="btn btn-primary" name="file">Submit</button>
				</form>
			</div>
		</div>
	</div>
	<br />
	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>

</body>
</html>