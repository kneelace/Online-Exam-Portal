<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Remove Questions</title>
</head>
<body>
	<h1>Remove Questions:</h1>
	<form action="questionRemoval">
	<select name="examId">
		<c:forEach items="${requestScope.filePathList}" var="exam">

			<option value="${exam.examId}">${exam.filePath}</option>

		</c:forEach>
	</select>
	<br>
		<input type="submit" value="Remove">
	</form>
	
	<br/>
	<a href="logout">Logout</a><br/>
</body>
</html>