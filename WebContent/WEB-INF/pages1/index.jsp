<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AceIt</title>
<!-- <link rel="stylesheet" type="text/css" href="/bhaktiAceIt/style.css"> -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
    rel="stylesheet">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
a img{
	border-radius:50%;
}
body  {
  background-image: url("${pageContext.request.contextPath}/resources/images/lang.jpg") ;
   background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
  }
</style> 
</head>
<body>
<div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<a class="navbar-brand" href="/bhaktiAceIt">
    <img src="${pageContext.request.contextPath}/resources/images/AceItlogo.png" alt="logo" style="width:40px;">
  </a>
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="student/login">Student Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="admin/login">Admin Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="student/showForm">Register</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="admin/aboutUs">About Us</a>
    </li>
  </ul>
</nav>
</div>

</body>
</html>