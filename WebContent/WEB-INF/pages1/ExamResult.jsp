<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exam Result</title>
</head>
<body>
Score- ${sessionScope.resultScore}
Status- ${sessionScope.passOrFail}


<br/>
	<a href="logout">Logout</a><br/>
</body>
</html> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE >
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>
<title>Exam Result</title>
</head>
<body>
 
	<div class="container mt-3">
		<table class="table table-hover">
			<thead class="thead-dark">
				<tr>
					<th>Score</th>
					<th>Result Status</th>
				</tr>
			</thead>
			<tbody id="myTable">
				
					<tr>
						<td>${sessionScope.resultScore}</td>
						<td>${sessionScope.passOrFail}</td>
					</tr>
			
			</tbody>
		</table>
		<center><a href="logout" class="btn btn-primary" role="button">Logout</a></center>
	</div>
	<br />
	
</body>
</html>