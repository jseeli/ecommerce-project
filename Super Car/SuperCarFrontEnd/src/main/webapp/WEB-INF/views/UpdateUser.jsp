<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Profile Update</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/UpdateUser.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<jsp:include page="/WEB-INF/views/AdminHeader.jsp"></jsp:include>
			<div class="container-fluid" style="background-color:#2196F3;color:#fff;height:100px;">
				<h1>Update Profile</h1>
			</div>
			<br>
			<div id="section1" class="container">
 		 		<div class="col-sm-9">
					<div class="box">
 		 				<form modelAttribute="user" action="updateuser" method="post" id="update">
 		 					<form:errors id="error" path="user.*"/>
  		 					<input type="hidden" name="Email" value="${user.email}"/>
							<h2>User Details</h2>
							<table>
								<tr>
									<td>UserName: <input type="text" class="form-control" name="Username" value="${user.username}" Required/></td>
								</tr>
								<tr>
									<td>Password: <input type="text" class="form-control" name="Password" value="${user.password}" Required/></td>
								</tr>
								<tr>
									<td>Gender: </td>
								</tr>
								<tr>
									<td>
										<select class="form-control" name="Gender" value="${user.gender}" Required>
											<option value="Male">Male</option>
											<option value="Female">Female</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>Role: </td>
								</tr>
								<tr>
									<td>
										<select class="form-control" name="Role" value="${user.role}" Required>
											<option value="USER_ROLE">USER_ROLE</option>
											<option value="ROLE_ADMIN">ROLE_ADMIN</option>
										</select>
									</td>
								</tr>
								<tr>
									<td>Mobile: <input type="text" class="form-control" name="Mobile" value="${user.mobile}" Required/></td>
								</tr>
								<tr>
									<td>Address: <input type="text" class="form-control" name="Address" value="${user.address}" Required/></td>
								</tr>
								<tr>
									<td>City: <input type="text" class="form-control" name="City" value="${user.city}" Required/></td>
								</tr>
								<tr>
									<td>States: <input type="text" class="form-control" name="States" value="${user.states}" Required/></td>
								</tr>
								<tr>
									<td>Country: <input type="text" class="form-control" name="Country" value="${user.country}" Required/></td>
								</tr>
								<tr>
									<td>Pincode: <input type="text" class="form-control" name="Pincode" value="${user.pincode}" Required/></td>
								</tr>
							</table>
							<br>
							<button type="submit" class="btn">UPDATE</button>
						</form>
					</div>
				</div>
			</div>
			<br>
			<br>
			<br>
	</body>
</html>