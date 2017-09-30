<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Login</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/login.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
		<form id="Log" action="perform_login" method="post">
			<div class="container">
				<div class="row">
					<div class="col-sm-4 col-sm-offset-4 col-lg-4 col-lg-offset-4">
						<div class="box">
							<h2>Login</h2>
								<div class="input-group">
							      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
							      <input id="Username" type="text" class="form-control" name="username" placeholder="Username" required/>
							    </div>
							    <br>
							    <div class="input-group">
							      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
							      <input id="Password" type="password" class="form-control" name="password" placeholder="Password" required/>
							    </div>
							<button type="submit" class="btn btn-success">Submit</button>
							<br>
							<br>
							<p>Not a member? <a href="Register.html">Sign Up</a></p>
						</div>
					</div>
				</div>
			</div>
		</form>
	</body>
</html>