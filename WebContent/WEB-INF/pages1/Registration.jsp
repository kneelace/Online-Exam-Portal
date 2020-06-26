<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>

<head>
<title>Student Registration</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<%-- <link href="${pageContext.request.contextPath}/resources/css/style.css"
    rel="stylesheet"> --%>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>

<link rel="stylesheet"
	href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />
	<link data-require="bootstrap-css@3.3.1" data-semver="3.3.1" rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
<style>
a img{
	border-radius:50%;
	    margin-top: -10px;
}
.register {
	width:60%;
	margin-left: auto;
	 margin-right: auto;  
	color: white;
}

body {
	background: #333;
}
h2{
	text-align:center ;
	margin-top:30px;
}
button {
	width: 20%;
}
</style>
</head>

<body>
<div>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
<a class="navbar-brand" href="/bhaktiAceIt">
    <img src="${pageContext.request.contextPath}/resources/images/AceItlogo.png" alt="logo" style="width:40px;">
  </a>
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/student/login">Student Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/admin/login">Admin Login</a>
    </li>
 
    <li class="nav-item">
      <a class="nav-link" href="${pageContext.request.contextPath}/admin/aboutUs">About Us</a>
    </li>
  </ul>
</nav>
</div>

	<div class="container">
		<div class="register">
			<h2>Student Registration</h2>
			<form action="registration">

				<div class="form-group col-md-4">
					<label for="studentFirstName">First Name</label> <input
						id="studentFirstName" name="studentFirstName" type="text"
						class="form-control" required>
				</div>
				<div class="form-group col-md-4">
					<label for="studentLastName">Last Name</label> <input
						id="studentLastName" name="studentLastName" type="text"
						class="form-control" required>
				</div>
				<div class="form-group col-md-4">
					<label for="studentMiddleName">MiddleName Name</label> <input
						id="studentMiddleName" name="studentMiddleName" type="text"
						class="form-control" required>
				</div>

				<div class="form-group col-md-6">
					<label for="studentEmail">Email</label> <input type="email"
						class="form-control" id="studentEmail" name="studentEmail"
						placeholder="Email" required>
				</div>

				<div class="form-group col-md-6">
					<label for="studentMobile">Number</label> <input type="number"
						class="form-control" id="studentMobile" name="studentMobile"
						placeholder="Number" maxlength="10" required>
				</div>

				<div class="form-group col-md-6">

					<label for="studentState">Date Of birth</label>
					
						<input class="form-control" id="studentDOB" name="studentDOB"
							placeholder="MM/DD/YYYY" type="text" required/>
					</div>
					<div class="form-group col-md-6">
					<label for="studentState">State</label> <select
						class="form-control" id="studentState" name="studentState" required>
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
				</div>
				<div class="form-group col-md-6">
					<label for="studentCity ">City</label> <select class="form-control"
						id="studentCity" name="studentCity" required>
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
				</div>
						<div class="form-group col-md-6">
						<label for="studentYearQualified">Year of Completion</label>
						<!-- <div class="input-group">
							<div class="input-group-addon">
								<i class="fa fa-calendar"> </i>
							</div> -->
							<input class="form-control" id="studentYearQualified"
								name="studentYearQualified" placeholder="YYYY" type="text" />
						</div>
						
						<div class="form-group col-md-6">
					<label for="studentPassword">Password</label>
					
						<input type="password" name="studentPassword" class="form-control"
							id="studentPassword" placeholder="Password" required>
					</div>
					<div class="form-group col-md-6">
					<label for="studentBatchId">Batch Id</label> <input type="number"
						class="form-control" id="studentBatchId" name="studentBatchId"
						placeholder="Batch Id" maxlength="3" required>
				</div>
				<center><button type="submit" class="btn btn-primary">Submit</button><center>
			</form>
			</div>
			</div>
	<script>
		$(document).ready(
				function() {
					var date_input = $('input[name="studentDOB"]'); //our date input has the name "date"
					var container = $('.bootstrap-iso form').length > 0 ? $(
							'.bootstrap-iso form').parent() : "body";
					date_input.datepicker({
						format : 'mm/dd/yyyy',
						container : container,
						todayHighlight : true,
						autoclose : true,
					})
				})
		$(document).ready(
				function() {
					var date_input = $('input[name="studentYearQualified"]'); //our date input has the name "date"
					var container = $('.bootstrap-iso form').length > 0 ? $(
							'.bootstrap-iso form').parent() : "body";
					date_input.datepicker({
						format : 'yyyy',
						container : container,
						todayHighlight : true,
						autoclose : true,
						viewMode : "years",
						minViewMode : "years"
					})
				})
	</script>
</body>

</html>