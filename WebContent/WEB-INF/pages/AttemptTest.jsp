<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script type="text/javascript">
	function preventBack() {
		window.history.forward();

	}
	setTimeout("preventBack()", 10);
	window.onunload = function() {
		window.alert("Try this Again and Your Test will be Submitted");
	};

	
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Attempt Test</title>
</head>
<body>



	<form action="scoreGeneration" method="post">

		Question - ${sessionScope.quesCounter+1}<br> studentId -
		${sessionScope.studentId}<br> ${requestScope.question.quesDesc} 
		<input type="radio" name="answer"
			value="${requestScope.question.isSolution1}" required>${requestScope.question.option1}<br>
		<input type="radio" name="answer"
			value="${requestScope.question.isSolution2}">${requestScope.question.option2}<br>
		<input type="radio" name="answer"
			value="${requestScope.question.isSolution3}">${requestScope.question.option3}<br>
		<input type="radio" name="answer"
			value="${requestScope.question.isSolution4}">${requestScope.question.option4}<br>

		<input type="submit" value="next">

	</form>
	<br />
	
	

	<button id="forceSubmit" name="forceSubmit" onclick="confirm()">Submit
		Test!</a>
		
		<script type="text/javascript">
		function confirm() {
			var forced = confirm("Confirm Submit Test?");
		}
		</script>
		
</body>
</html>