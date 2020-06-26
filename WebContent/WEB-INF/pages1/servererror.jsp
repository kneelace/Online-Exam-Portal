<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>We will be Right Back</title>

<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<style>
body {
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	
}
</style>

</head>
<body>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"> <a
		class="navbar-brand" href="/bhaktiAceIt/"> <img
		src="${pageContext.request.contextPath}/resources/images/AceItlogo.png"
		alt="logo" style="width: 40px;">
	</a>
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/student/login">Student
				Login</a></li>
		<li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/admin/login">Admin Login</a></li>
		<li class="nav-item"><a class="nav-link"
			href="${pageContext.request.contextPath}/student/showForm">Register</a>
		</li>

	</ul>
	</nav>
	<div class="imgbg">
		<img alt="Hang In There"
			src="${pageContext.request.contextPath}/resources/images/error.png">
	</div>
	
</body>
</html>