<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
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
</html>