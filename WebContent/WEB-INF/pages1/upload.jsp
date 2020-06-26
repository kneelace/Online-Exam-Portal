<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE >
<meta charset="utf-8">
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
<html>
<head>
    <title>Create Exam</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
    <link rel="stylesheet" href="https://formden.com/static/cdn/font-awesome/4.4.0/css/font-awesome.min.css" />
    <style>
        .register{
            width: 70%;
            color: white;
        }

        body {
            background: #333;
        }

        button {

            width: 50%;
            margin: auto;
        }
    </style>
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
                <!-- <li>
                    <a href="http://localhost:8090/bhaktiAceIt/" data-toggle="collapse" aria-expanded="false" >
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                    
                </li> -->
                <%-- <li>
                    <a href="${pageContext.request.contextPath}/" >
                        <i class="fas fa-home"></i>
                        Home
                    </a>
                </li> --%>
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
                        <span>Admin Dashboard</span>
                    </button>
                    <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <i class="fas fa-align-justify"></i>
                    </button>

                </div>
            </nav>
           <div class="register">
            <h2>Upload Batch Questions</h2>
            <form action="${pageContext.request.contextPath}/admin/upload" method="POST" enctype="multipart/form-data">
                <div class="form-group">
                    <label for="technology">Technology</label>
                    <select class="form-control" id="technology" name="technology">
                        <option value="java">java</option>
                        <option value="sql">sql</option>
                        <option value="php">php</option>
                        <option value="c/c++">c/c++</option>
                        <option value="python">python</option>
                        <option value="c#/.net">c#/.net</option>
                    </select></div>
                
                <div class="form-group">
                  <label for="level">Level</label>
                    <select class="form-control" id="level" name="level">
                        <option value="l1">Level 1</option>
                        <option value="l2">Level 2</option>
                        <option value="l3">Level 3</option>
                        
                    </select></div>
                <div class="form-group">
                    <label for="pass_criteria">pass criteria</label>
                    <input id="studentMiddleName" name=" pass_criteria" type="text" class="form-control" placeholder="Pass Criteria">
                </div>
                
                <div class="form-group ">
                    <label for="exam_time">Exam Time</label>
                    <input type="number" class="form-control" id="exam_time" name="exam_time" placeholder="Exam time in minutes">
                </div>
                
<input
			type="file" name="file" /> 	
			<button type="submit" class="btn btn-primary" name="file">Submit</button>
        	<br>
                <h1>Upload Status</h1>
 
    <h2>${message}</h2>
                
            </form>
        </div>
         
        </div>
        
	
	
	<br/>
</div>
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
    <div class="container">
        
    </div>

</body></html>