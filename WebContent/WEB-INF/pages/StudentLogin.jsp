<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
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

<style>
body {
	background: #333;
	/* background-image: url("C:\Users\AE106_PC19\Desktop\AceItviews\login-image"); */
}

.form_bg {
	background-color: #eee;
	color: #666;
	padding: 20px;
	border-radius: 10px;
	position: absolute;
	border: 1px solid #fff;
	margin: auto;
	top: 0;
	right: 0;
	bottom: 0;
	left: 0;
	width: 320px;
	height: 560px;
}

.align-center {
	text-align: center;
}
</style>
</head>
<body>

	<div>
		<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
			<a class="navbar-brand" href="/bhaktiAceIt/">
				<img
				src="${pageContext.request.contextPath}/resources/images/AceItlogo.png"
				alt="logo" style="width: 40px;">
			</a>
			<ul class="navbar-nav">
				
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/login">Admin
						Login</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/student/showForm">Register</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/aboutUs">About
						Us</a></li>
			</ul>
		</nav>
	</div>



	<div class="container">
		<div class="row">
			<div class="form_bg">
				<form action="dashboard" method="post">

					<font color="red"><c:out value="${message}"></c:out></font>
					<h2 class="text-center">Student Login Page</h2>
					<br />
					<div class="form-group">
						<input type="email" class="form-control" id="studId"
							placeholder="Student Id" name="studId" required>
					</div>
					<div class="form-group">
						<input type="password" class="form-control" id="studPass"
							placeholder="Password" name="studPass" required>

					</div>

					<br />

					<div class="form-group" align="left">
						<img id="captcha_id" name="imgCaptcha" src="captcha.jpg">
					</div>
					<div align="right">
						<a href="javascript:;" title="change captcha text"
							onclick="document.getElementById('captcha_id').src = 'captcha.jpg?' + Math.random();  return false">
							<img
							src="${pageContext.request.contextPath}/resources/images/refresh.jpg" />
						</a>
					</div>
					<br />
					<div class="form-group">
						<input type="text" class="form-control" id="captcha"
							placeholder="Captcha Text" name="captcha" required>
					</div>

					<br /> <br />
					<div class="align-center">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>

					<div>
						<a href="showForm">Sign Up Here</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>