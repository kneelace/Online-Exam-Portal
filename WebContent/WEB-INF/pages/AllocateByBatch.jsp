<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Allocate Exam to batch</title>
</head>
<body>
<h1>Exam Allocation</h1>
	<form action="batchAllocation">
		
			Select Exam:<select name="examId">
								<c:forEach items="${requestScope.examList}" var="exam">
											
												<option value="${exam.examId}">${exam.examId} -- ${exam.subject} -- ${exam.examLevel}--${exam.filePath}</option>
								
								</c:forEach>
						</select>
			<br>
			Select Batch: <select name="batchId">
								<c:forEach items="${requestScope.batchList}" var="batch">
											
												<option value="${batch}">${batch}</option>
								
								</c:forEach>
						</select>
		
		Date of Exam:<input type="date" name="dateOfExam">
		<br>
		<input type="submit" value="Allocate">
	</form>
	<a href="logout">Logout</a><br/>
</body>
</html>