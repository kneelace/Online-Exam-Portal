<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Reports</title>
</head>
<body>
	<h1>Search Student Reports</h1>
	<form action="searchStudents">
	Technology:
	<select name="technology">
		<option value="java">JAVA</option>
		<option value="sql">SQL</option>
		<option value="php">PHP</option>
		<option value="c/c++">C/C++</option>
		<option value="python">PYTHON</option>
		<option value="c#/.net">C#/.NET</option>	
	</select>
	
	<br>
	Level:
	<select name="level">
		<option value="l1">LEVEL 1</option>
		<option value="l2">LEVEL 2</option>
		<option value="l3">LEVEL 3</option>
	</select>
	<br>
	
	<!-- TRY AJAX HERE
		VALIDATE STATES AND CITIES-->
	State:
	<select name="state">
		<option value="maharashtra">Maharashtra</option>
		<option value="Gujarat">Gujarat</option>
		<option value="Himachal Pradesh">Himachal Pradesh</option>
		<option value="Andhra Pradesh">Andhra Pradesh</option>
		<option value="Arunachal Pradesh">Arunachal Pradesh</option>
		<option value="Assam">Assam</option>
		<option value="Bihar">Bihar</option>
		<option value="Chhattisgarh">Chhattisgarh</option>
		<option value="Goa">Goa</option>
		<option value="Haryana">Haryana</option>
		<option value="Himachal Pradesh">Himachal Pradesh</option>
		<option value="Jammu and Kashmir">Jammu and Kashmir</option>
		<option value="Jharkhand">Jharkhand</option>
		<option value="Karnataka">Karnataka</option>
		<option value="Kerala">Kerala</option>
		<option value="Madhya Pradesh">Madhya Pradesh</option>
		<option value="Punjab">Punjab</option>
		<option value="Rajasthan">Rajasthan</option>
		<option value="Tamil Nadu">Tamil Nadu</option>
	</select>
	<br>
	City:
	<select name="city">
		<option value="mumbai">Mumbai</option>
		<option value="Pune">Pune</option>
		<option value="Nagpur">Nagpur</option>
		<option value="Nashik">Nashik</option>
		<option value="Thane">Thane</option>
		<option value="Bangalore">Bangalore</option>
		<option value="Chennai">Chennai</option>
		<option value="Kolkata">Kolkata</option>
		<option value="New Delhi">New Delhi</option>
		<option value="Bhopal">Bhopal</option>
		<option value="Agra">Agra</option>
		<option value="Surat">Surat</option>
		<option value="Rajkot">Rajkot</option>
		<option value="Jodhpur">Jodhpur</option>
		<option value="Jaipur">Jaipur</option>
		<option value="Ludhiyana">Ludhiyana</option>
	</select>
	<br>
	<input type="submit" value="Search">
</form>

<br/>
	<a href="logout">Logout</a><br/>
</body>
</html>