<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>
</head>
<body>
<form action="registration" method="POST">

<label  id="studentFirstName">First Name</label>
<input id="studentFirstName"type="text" name="studentFirstName"><br>

<label  id="studentLastName">Last Name</label>
<input id="studentLastName"type="text" name="studentLastName"><br>

<label  id="studentMiddleName"> Middle Name</label>
<input id="studentMiddleName"type="text" name="studentMiddleName"><br>

<label  id="studentEmail">Enter Email</label>
<input id="studentEmail"type="text" name="studentEmail"><br>

<label  id="studentMobile">Mobile Number</label>
<input id="studentMobile"type="text" name="studentMobile"><br>

<label id="studentDOB">Date Of Birth</label>
<input id="studentDOB"type="text" name="studentDOB"><br>


<!-- <input id="studentState"type="text" name="studentState">


<input id="studentCity"type="text" name="studentCity"> -->

<label id="studentState">State</label>
	<select name="studentState">
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
<label id="studentCity"> City</label>
	<select name="studentCity">
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
	

<label id="studentYearQualified"> Year Of Completion</label>
<input id="studentYearQualified"type="text" name="studentYearQualified">

<label  id="studentPassword">Enter Password</label>
<input id="studentPassword"type="password" name="studentPassword">

<label  id="studentBatchId">Enter Batch ID</label>
<input id="studentBatchId"type="text" name="studentBatchId">

<input type="submit" value="Register">

</form>


<br/>
	
</body>
</html>