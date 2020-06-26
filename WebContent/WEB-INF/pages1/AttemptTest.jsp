<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Attempt Test</title>
<script type="text/javascript">
	function preventBack() {
		window.history.forward();

	}
	setTimeout("preventBack()", 10);
	window.onunload = function() {
		window.alert("Try this Again and Your Test will be Submitted");
	};
</script>
</head>
<body>
	<div style="font-weight: bold" id="timer"></div>


	<form method="post" name="test">

		<%-- Question - ${sessionScope.quesCounter+1}<br>
	studentId - ${sessionScope.studentId}<br>
	
	
		${requestScope.question.quesDesc}
		<input type="radio" name="answer" value="${requestScope.question.isSolution1}" required>${requestScope.question.option1}<br>
		<input type="radio" name="answer" value="${requestScope.question.isSolution2}">${requestScope.question.option2}<br>
		<input type="radio" name="answer" value="${requestScope.question.isSolution3}">${requestScope.question.option3}<br>
		<input type="radio" name="answer" value="${requestScope.question.isSolution4}">${requestScope.question.option4}<br>
		
		<input type="submit" value="next"> --%>

		<div class="container">
			<div class="card">
				<div class="card-header bg-dark text-white">${sessionScope.quesCounter+1}.
					${requestScope.question.quesDesc}</div>
				<div class="card-body">
					<input type="radio" name="answer"
						value="${requestScope.question.isSolution1}" required>${requestScope.question.option1}<br>
					<input type="radio" name="answer"
						value="${requestScope.question.isSolution2}">${requestScope.question.option2}<br>
					<input type="radio" name="answer"
						value="${requestScope.question.isSolution3}">${requestScope.question.option3}<br>
					<input type="radio" name="answer"
						value="${requestScope.question.isSolution4}">${requestScope.question.option4}<br>

				</div>
				<div class="card-footer">
					<button type="submit" class="btn btn-primary"  onclick="form.action='scoreGeneration';">Next</button>
					<button type="submit" class="btn btn-primary" onclick="return forceSubmit()">Submit</button>
					
				</div>
				
				
	<script type="text/javascript">
		var max_time = 1;
		var c_seconds = 0;
		var total_seconds = 60 * max_time;
		max_time = parseInt(total_seconds / 60);
		c_seconds = parseInt(total_seconds % 60);

		document.getElementById("timer").innerHTML = 'Time Left: ' + max_time
				+ ' minutes ' + c_seconds + ' seconds';

		function init() {
			document.getElementById("timer").innerHTML = 'Time Left: '
					+ max_time + ' minutes ' + c_seconds + ' seconds';
			setTimeout("CheckTime()", 999);
		}

		function CheckTime() {
			document.getElementById("timer").innerHTML = 'Time Left: '
					+ max_time + ' minutes ' + c_seconds + ' seconds';
			if (total_seconds <= 0) {
				//setTimeout('document.quiz.submit()', 1);
				window.alert("Timer Expired");
				window.location.href ="scoreGeneration";
			} else {
				total_seconds = total_seconds - 1;
				max_time = parseInt(total_seconds / 60);
				c_seconds = parseInt(total_seconds % 60);
				setTimeout("CheckTime()", 999);
			}

		}
		init();
	</script>
	
	
				<script>
				function forceSubmit(){
					var response = confirm("Do you really want to Submit?");
					if(response)
						document.test.action="forceSubmit";
				}
				</script>
			</div>
		</div>
	</form>
</body>
</html>