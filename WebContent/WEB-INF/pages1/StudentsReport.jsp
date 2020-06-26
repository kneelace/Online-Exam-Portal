<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- Bootstrap CSS CDN -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">

<!-- Font Awesome JS -->
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"></script>
<script defer
	src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"></script>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet">
<title>Searched Students</title>

</head>
<body>
	<div class="wrapper">
		<!-- Sidebar  -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Welcome</h3>
				<strong>AI</strong>
			</div>

			<ul class="list-unstyled components">
				<!--  <li>
                    <a href="/bhaktiAceIt/" data-toggle="collapse" aria-expanded="false" >
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                    
                </li> -->
				<li><a href="createExam"> <i class="fa fa-plus-square"></i>
						Create Exam
				</a> <a href="removeQuestions"> <i class="fa fa-minus"></i> Remove
						Questions
				</a></li>
				<li><a href="allocateByBatch"> <i class="fa fa-arrow-right"></i>
						Allocate By Batch
				</a></li>
				<li><a href="viewReports"> <i class="fa fa-arrow-right"></i>
						View Reports
				</a></li>
				<li><a href="logout"> <i class="fa fa-sign-out"></i> Logout
				</a></li>

			</ul>
		</nav>

		<!-- Page Content  -->
		<div id="content">

			<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
				<div class="container-fluid">

					<button type="button" id="sidebarCollapse" class="btn btn-info">
						<i class="fas fa-align-left"></i> <span>Admin Dashboard</span>
					</button>
					<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
						type="button" data-toggle="collapse"
						data-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<i class="fas fa-align-justify"></i>
					</button>

				</div>
			</nav>


		</div>

	</div>

	<br />
	<!-- Page Content  -->
	<div id="content">

		<nav class="navbar navbar-expand-lg bg-dark navbar-dark">
			<div class="container-fluid">

				<button type="button" id="sidebarCollapse" class="btn btn-info">
					<i class="fas fa-align-left"></i> <span>Student Dashboard</span>
				</button>
				<button class="btn btn-dark d-inline-block d-lg-none ml-auto"
					type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<i class="fas fa-align-justify"></i>
				</button>

			</div>
		</nav>

		<div class="container mt-3">
			<input class="form-control" id="myInput" type="text"
				placeholder="Search Records.."><br>
			<br>
			<table class="table table-hover">
				<thead class="thead-dark">
					<tr>
						<th>Name</th>
						<th>Email-id</th>
						<th>Mobile Number</th>
						<th>City</th>
						<th>State</th>
					</tr>
				</thead>
				<tbody id="myTable">
					<c:forEach items="${requestScope.studentList}" var="student">
						<tr>
							<td>${student.studentFirstName}${student.studentLastName}</td>
							<td>${student.studentEmail}</td>
							<td>${student.studentMobile}</td>
							<td>${student.studentCity}</td>
							<td>${student.studentState}</td>
						<tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>



	<br />
	<a href="logout">Logout</a>
	<br />
	<script>
		$(document)
				.ready(
						function() {
							$("#myInput")
									.on(
											"keyup",
											function() {
												var value = $(this).val()
														.toLowerCase();
												$("#myTable tr")
														.filter(
																function() {
																	$(this)
																			.toggle(
																					$(
																							this)
																							.text()
																							.toLowerCase()
																							.indexOf(
																									value) > -1)
																});
											});
						});
	</script>
	<!-- jQuery CDN - Slim version (=without AJAX) -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<!-- Popper.JS -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
			});
		});
	</script>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
   <!-- Bootstrap CSS CDN -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" >

    <!-- Font Awesome JS -->
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" ></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" ></script>
  <link href="${pageContext.request.contextPath}/resources/css/style.css"
    rel="stylesheet">
<title>Students Report</title>

</head>
<body>
<div class="wrapper">
        <!-- Sidebar  -->
        <nav id="sidebar">
            <div class="sidebar-header">
                <h3>Welcome</h3>
                <strong>AI</strong>
            </div>

           <ul class="list-unstyled components">
               <!--  <li class="active">
                    <a href="http://localhost:8090/bhaktiAceIt/" data-toggle="collapse" aria-expanded="false" >
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                    
                </li> -->
               <li>
                    <a href="createExam">
                        <i class="fa fa-plus-square"></i>
                        Create Exam
                    </a>
                    <a href="removeQuestions" >
                        <i class="fa fa-minus" ></i>
                        Remove Questions
                    </a>
                    
                </li>
                  <li>
                    <a href="allocateByBatch">
                        <i class="fa fa-arrow-right"></i>
                        Allocate By Batch
                    </a>
                   
                    
                </li>
                <li>
                    <a href="viewReports">
                        <i class="fa fa-arrow-right"></i>
                       View Reports
                    </a>
                </li>
                <li>
                    <a href="logout">
                        <i class="fa fa-sign-out"></i>
                        Logout
                    </a>
                </li>
                
                
            </ul>
        </nav>

        <!-- Page Content  -->
        <div id="content">

            <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                <div class="container-fluid">

                    <button type="button" id="sidebarCollapse" class="btn btn-info">
                        <i class="fas fa-align-left"></i>
                        <span>Student Dashboard</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                </div>
            </nav>
           
            <div class="container mt-3">
	<input class="form-control" id="myInput" type="text" placeholder="Search Records.."><br><br>
<table class="table table-hover">
<thead class="thead-dark">
		<tr>
			<th >Name</th>
			<th >Email-id</th>
			<th>Mobile Number</th>
			<th>City</th>
			<th>State</th>
		</tr>
	</thead>
		<tbody id="myTable" >
		<c:forEach items="${requestScope.studentList}" var="student">
		<tr>
			<td>${student.studentFirstName} ${student.studentLastName}</td>
			<td>${student.studentEmail}</td>
			<td>${student.studentMobile}</td>
			<td>${student.studentCity}</td>
			<td>${student.studentState}</td>
		<tr>
		</c:forEach>
		</tbody>
	</table>
	</div>
        </div>
        
    </div>
	
	<br/>
	<a href="logout">Logout</a><br/>
  <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
 <!-- jQuery CDN - Slim version (=without AJAX) -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <!-- Popper.JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" ></script>
    <!-- Bootstrap JS -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" ></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $('#sidebarCollapse').on('click', function () {
                $('#sidebar').toggleClass('active');
            });
        });
    </script>
</body>
</html>
