<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Dashboard</title>
<!-- <script type="text/javascript">
	function newtab() {
	
		window.open("http://localhost:8082/bhaktiAceIt/student/appearExam",
						"",
						"toolbar=no,menubar=no,resizable=yes,scrollbars=yes,width=1024");
	} 
</script>-->
</head>
<body>
	Welcome ${sessionScope.studentId}
	<a href = "appearExam">Appear for Exam</a><br>
	<a href="viewResults">View Results</a><br>
	<a href="logout">Log out</a>
</body>
</html>