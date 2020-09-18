
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <title>Library Management System For College And Book Stores</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      position: relative; 
  }
  .affix {
      top:0;
      width: 100%;
      z-index: 9999 !important;
  }
  .navbar {
      margin-bottom: 0px;
  }

  .affix ~ .container-fluid {
     position: relative;
     top: 50px;
  }
  #section1 {padding-top:50px;height:500px;color: #fff; background-color: #1E88E5;}
  #section2 {padding-top:50px;height:500px;color: #fff; background-color: #673ab7;}
  #section3 {padding-top:50px;height:500px;color: #fff; background-color: #ff9800;}
  #section41 {padding-top:50px;height:500px;color: #fff; background-color: #00bcd4;}
  #section42 {padding-top:50px;height:500px;color: #fff; background-color: #009688;}
  
  footer { 
    display: black;
	blackground-color:black;
}
  
  </style>
</head>
<body>
<body background="back.jpg">
<body data-spy="scroll" data-target=".navbar" data-offset="50">
<% String ses=(String)request.getSession().getAttribute("student_id"); 
if(ses==null){
	
response.sendRedirect("Search_student_record.jsp");	
}

%>

<div class="container-fluid" style="background-image:url('Hd.jpg');height:200px;">
</div>

<nav class="navbar navbar-inverse" data-spy="affix" data-offset-top="197">
  <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="Admin_login.jsp">Welcome Admin</a>
    </div>
    <div>
      <div class="collapse navbar-collapse" id="myNavbar">
        <ul class="nav navbar-nav">
          <li><a href="Add_books.jsp">Add Books</a></li>
          <li><a href="Delete_books.jsp">Delete Books</a></li>
          <li><a href="Search_books.jsp">Search Books</a></li>
          <li><a href="Add_student.jsp">Add Student</a></li>
          <li><a href="Update_student_record.jsp">Update Student Record</a></li>
          <li><a href="Delete_student.jsp">Delete Student</a></li>
          <li><a href="Issue_book_details.jsp">Issue Book Details</a></li>
          <li><a href="Return_books_details.jsp">Return Book details</a></li>
           <li>
          <form action="update_student_record_servlet" method="post">
       
          	<input type="submit" value="student_id">
   
          </form>
         </li>
           </ul>
      </div>
    </div>
  </div>
</nav>
<marquee direction="left"><h3><b>Library Management System</b></h3></marquee><br>

<div class="container">
<h3>Data update Form...</h3>
		<form>
		
		<div class="form-group">
    <label for="student_id">Enter The Student ID</label>
    <input type="text" class="form-control" id="student_id" placeholder="Enter The Student ID" readonly="readonly">
  </div>
		
	  <div class="form-group">
    <label for="student_name">Enter The Student Name</label>
    <input type="text" class="form-control" id="student_name" placeholder="Enter Student Name" name="student_name">
  </div>
		
		<div class="form-group">
    <label for="course">Enter The Student Course</label>
    <input type="text" class="form-control" id="course" placeholder="Enter Course Of Student" name="course">
  </div>
		
  
   <div class="form-group">
    <label for="phone_number">Enter Phone Number</label>
    <input type="text" class="form-control" id="text" placeholder="Enter Student Contact Number" name="phone_number">
	</div>
	
  <button type="submit" class="btn btn-primary">Update Student</button>
</form>
</div>
</div>
<div><br><br><br><br>

</div>

<div>
	<footer class="navbar-default navbar-fixed-bottom">
  <div class="container-fluid">
  <div>
    <span><center><p><h3>© Copyright 2010-16 Library Manegement System - An ISO 9001:2008 & ISO 27001:2005 Company</h3></p></center></span>
    </div>
  </div>
  </footer>
  </div>

</body>
</html>