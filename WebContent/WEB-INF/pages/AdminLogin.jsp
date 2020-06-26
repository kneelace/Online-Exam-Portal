<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<form action="${pageContext.request.contextPath}/admin/adminProfile" method="post">
		<label id="adminId">Email Id:</label> <input id="adminId" type="text"
			name="adminId" required><br> <label id="adminPassword">Password:</label>
		<input id="adminPassword" type="password" name="adminPassword"
			required><br> <input type="submit" value="Login">

	</form>
</body>
</html>