<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="Student registration page">
    <meta name="author" content="sofos@aueb.gr">    
    <title>Student Registration</title>
    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">   
    <!-- Custom styles for this template -->
    <link href="css/mystyle.css" rel="stylesheet">  

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  
  	

    <div class="container theme-showcase" role="main">

		<!-- Main jumbotron for a primary marketing message or call to action -->
		<div class="jumbotron">
			<h1>Java Tickets Account Registration</h1>
		</div>

		<div class="page-header">
			<h1>Φόρμα Εγγραφής</h1>
		</div>
		
		<% if(request.getAttribute("message") != null) { %>
					
			<div class="alert alert-success" role="alert">
				<p class="text-center"><%=(String)request.getAttribute("message") %></p>
			</div>
			
		<% }
		
		   if(request.getAttribute("errormessage") != null) {
		%>
			
			<div class="alert alert-danger" role="alert">
				<p class="text-center"><%=(String)request.getAttribute("errormessage") %></p>
			</div>
			
		<%  } %>
      
		<form class="form-horizontal" method="POST" action="register">
			  <div class="form-group">
				<label for="sname" class="col-sm-2 control-label">Όνομα</label>
				<div class="col-sm-6">
				  <input type="text" name="username" class="form-control" id="username" placeholder="το όνομα σου">
				</div>
			  </div>
			  <div class="form-group">
				<label for="password" class="col-sm-2 control-label">Κωδικός</label>
				<div class="col-sm-6">
				  <input type="password" name="password" class="form-control" id="password" placeholder="ο κωδικός σου">
				</div>
			  </div>
			  
			  <div class="form-group">
				<label for="am" class="col-sm-2 control-label">email</label>
				<div class="col-sm-6">
				  <input type="text" name="email" class="form-control" id="email" placeholder="το email σου">
				</div>
			  </div>
			  
			  <div class="form-group">
				<div class="col-sm-offset-2 col-sm-6">
				  <button type="submit" class="btn btn-success">Καταχώρηση</button>
				</div>
			  </div>
		</form>  
          
    </div> <!-- /container -->
	
	
	 
  </body>
</html>    