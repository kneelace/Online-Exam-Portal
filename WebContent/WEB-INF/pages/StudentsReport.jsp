<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Searched Students</title>
</head>
<body>
	<h1>Searched Students</h1>
	<table border="1">
		<tr>
			<th>Name</th>
			<th>Email-id</th>
			<th>Mobile Number</th>
			<th>City</th>
			<th>State</th>
		</tr>
		<c:forEach items="${requestScope.studentList}" var="student">
		<tr>
			<td>${student.studentFirstName} ${student.studentLastName}</td>
			<td>${student.studentEmail}</td>
			<td>${student.studentMobile}</td>
			<td>${student.studentCity}</td>
			<td>${student.studentState}</td>
		<tr>
		</c:forEach>
	</table>
	
	<br/>
	<a href="logout">Logout</a><br/>
</body>
</html>