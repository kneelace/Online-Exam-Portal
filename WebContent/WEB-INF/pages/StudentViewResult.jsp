<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Results</title>
</head>
<body>
<table border="1">
		<tr>
		
			<th>Result id</th>
			<th>Result Score</th>
			<th>Result Status</th>
			<th>Date of Exam</th>
			
		</tr>
		<c:forEach items="${requestScope.resultList}" var="result">
		<tr>
			<td>${result.resultId}</td>
			<td>${result.resultScore}</td>
			<td>${result.resultStatus}</td>
			<td>${result.dateOfExam}</td>
		<tr>
		</c:forEach>
	</table>
	
	<a href="logout">Logout</a><br/>
</body>
</html>