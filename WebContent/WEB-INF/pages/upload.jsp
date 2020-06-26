<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<h1>Spring MVC file upload example</h1>

	<form method="POST"
		action="${pageContext.request.contextPath}/admin/upload"
		enctype="multipart/form-data">


		Technology: <select name="technology">
			<option value="java">JAVA</option>
			<option value="sql">SQL</option>
			<option value="php">PHP</option>
			<option value="c/c++">C/C++</option>
			<option value="python">PYTHON</option>
			<option value="c#/.net">C#/.NET</option>
		</select> <br> Level: <select name="level">
			<option value="l1">LEVEL 1</option>
			<option value="l2">LEVEL 2</option>
			<option value="l3">LEVEL 3</option>
		</select> <br> <input type="text" name="pass_criteria"
			placeholder="Pass Criteria" /> <br> <input type="text"
			name="exam_time" placeholder="Exam Time" /> <br> <input
			type="file" name="file" /> <input type="submit" value="Submit" />
	</form>

	<h1>Upload Status</h1>

	<h2>Message : ${message}</h2>

	<br />
	<br />

	<a href="allocateByBatch"> Allocate Exam to batch {BOOTSTRAP}</a>

	<br />

	<a href="logout">Logout</a>
	<br />

</body>
</html>