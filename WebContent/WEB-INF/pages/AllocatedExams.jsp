<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- <script type="text/javascript">
	function newtab() {
		
		var examId = document.getElementById(examId);
		session.setAttribute("examId",examId);

		window.alert(session.getAttribute("examId"));

		window.open("http://localhost:8082/bhaktiAceIt/student/startExam",
						"",
						"toolbar=no,menubar=no,resizable=yes,scrollbars=yes,width=1024");
	}
</script> -->
<title>Insert title here</title>
</head>


<body>
	<form action="startExam" method="post">
		<c:forEach items="${requestScope.allocatedExamList}" var="exam">

			<option value="${exam.examId}">${exam.subject} -- ${exam.examLevel}</option>
			<a href="${exam.subject}">${exam.subject}</a>
			<input type="radio"  id ="examId"name="examId" value="${exam.examId}">${exam.subject}<br>
		</c:forEach>


		<input type="submit" value="Start Exam"> <br /> 
		<a href="logout">Logout</a><br />
	</form>
</body>
</html> --%>

