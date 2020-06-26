<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE >
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<title>Student DashBoard</title>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>

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
				<!-- <!-- <li class="active">
                    <a href="/bhaktiAceIt" >
                        <i class="fas fa-home"></i>
                        Home
                    </a> 
                    
                </li>
 -->
				<li><a href="appearExam"> <i class="fa fa-book"></i> Appear
						for Exam
				</a> <a href="viewResults"> <i class="fas fa-copy"></i> View Results
				</a></li>
				<li><a href="logout"> <i class="fas fa-image"></i> Logout
				</a></li>

			</ul>
		</nav>

		<!-- Page Content  -->
		<div id="content">

			<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fas fa-align-left"></i> <span>Student Dashboard</span>
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

			<h2>Exam Instructions</h2>
			<p>
				1. There is no negative Marking.<br /> 2. A countdown timer will be
				visible on the top of every question.<br /> 3. 1 minute will be
				available for each question.<br /> 4. After timer expires, student
				will be redirected to next question and current question will be
				marked as unattempted.<br /> 5. Student cannot navigate to previous
				question.<br /> 6. Clicking on submit button will submit the exam
				and display the result.<br />
		</div>
	</div>

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