<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="startExam" method="post">
	<c:forEach items="${requestScope.allocatedExamList}" var="exam">

		<option value="${exam.examId}">${exam.subject} -- ${exam.examLevel}</option>
		<a href="${exam.subject}">${exam.subject}</a>
			<input type="radio"  id ="examId"name="examId" value="${exam.examId}">${exam.subject}<br>
		
	</c:forEach>
	<input type="submit" value="Start Exam">
	<a href="logout">Logout</a><br />
</form>	
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE >
<html>
<head>
<meta charset="utf-8">
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
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<title>Allocated Exams</title>

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
				<!-- <li class="active"><a href="http://localhost:8090/bhaktiAceIt/"
					data-toggle="collapse" aria-expanded="false"> <i
						class="fas fa-home"></i> Home
				</a></li> -->
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

			<%-- 		<form action="startExam" method="post">
	<c:forEach items="${requestScope.allocatedExamList}" var="exam">

		<option value="${exam.examId}">${exam.subject} -- ${exam.examLevel}</option>
		<a href="${exam.subject}">${exam.subject}</a>
			<input type="radio"  id ="examId"name="examId" value="${exam.examId}">${exam.subject}<br>
		
	</c:forEach>
	<input type="submit" value="Start Exam">
	<a href="logout">Logout</a><br />
</form>	 --%>
			<form action="startExam" method="post">
				<div class="container">
					<div class="card">
						<div class="card-header bg-dark text-white">Alloted Exams</div>
						<div class="card-body">
							<c:forEach items="${requestScope.allocatedExamList}" var="exam">
								<option value="${exam.examId}">${exam.subject}--
									${exam.examLevel}</option>
								<a href="${exam.subject}">${exam.subject}</a>
								<input type="radio" id="examId" name="examId"
									value="${exam.examId}">${exam.subject}<br>

							</c:forEach>

						</div>
						<div class="card-footer">
							<center>
								<input type="submit" value="Start Exam">
							</center>
						</div>
					</div>
				</div>

			</form>
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
