<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Register</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Register.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
		<br>
		<form  modelAttribute="user" method="post" action="saveregister" class="form-signing" id="Register" >
			<div class="container">
				<div class="row">		
					<div class="col-sm-8 col-sm-offset-2 col-lg-8 col-lg-offset-2">
						<div class="box">
							<h2>Sign Up</h2>
							<br>
							<form:errors id="error" path="user.*"/>
							<div class="col-sm-6 col-lg-6">
								<table>
									<tr>
										<td>UserName</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="UserName" name="username" /></td>
									</tr>
									<tr>
										<td>Email-ID</td>
									</tr>
									<tr>
										<td><input type="email" class="form-control" placeholder="Email-id" name="Email" /></td>
									</tr>
									<tr>
										<td>Create a Password</td>
									</tr>
									<tr>
										<td><input type="password" class="form-control" placeholder="Password" name="Password" /></td>
									</tr>
									<tr>
										<td>Gender</td>
									</tr>
									<tr>
										<td>
											<select class="form-control" name="gender">
												<option value="Male">Male</option>
												<option value="Female">Female</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>Mobile Number</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="Mobile No." name="Mobile" /></td>
									</tr>
								</table>
							</div>
							<div class="col-sm-6 col-lg-6">
								<table>	
									<tr>
										<td>Address</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="Address" name="Address" /></td>
									</tr>
									<tr>
										<td>City</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="City" name="City" /></td>
									</tr>
									<tr>
										<td>States</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="States" name="States" /></td>
									</tr>
									<tr>
										<td>Country</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="Country" name="Country" /></td>
									</tr>
									<tr>
										<td>pincode</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="pincode" name="Pincode" /></td>
									</tr>
								</table>	
							</div>
						<button type="submit" class="btn btn-success">Submit</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<br>
	<br>
	<br>
	</body>
</html>