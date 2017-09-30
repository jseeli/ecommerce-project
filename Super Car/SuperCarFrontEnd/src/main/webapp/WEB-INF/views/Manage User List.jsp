<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>User List</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Manage User List.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
	</head>
	
	<body>
		<jsp:include page="/WEB-INF/views/AdminHeader.jsp"></jsp:include>
		<div class="contianer">
			<h2>User List</h2>
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Username</th>
							<th>Email</th>
							<th>Password</th>
							<th>Gender</th>
							<th>Role</th>
							<th>Mobile_No</th>
							<th>Address</th>
							<th>City</th>
							<th>States</th>
							<th>Country</th>
							<th>Pincode</th>
							<th colspan="2">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="user" items="${userList}">
							<tr>
								<td>${user.username}</td>
								<td>${user.email}</td>
								<td>${user.password}</td>
								<td>${user.gender}</td>
								<td>${user.role}</td>
								<td>${user.mobile}</td>
								<td>${user.address}</td>
								<td>${user.city}</td>
								<td>${user.states}</td>
								<td>${user.country}</td>
								<td>${user.pincode}</td>
								<td>
									<a type="button" class="btn btn-info" href="${pageContext.request.contextPath}/update?email=<c:out value="${user.email}"></c:out>">EDIT</a>
									<a type="button" class="btn btn-danger" href="${pageContext.request.contextPath}/delete?email=<c:out value="${user.email}"></c:out>">DELETE</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		<br>
		<br>
		<br>
	</body>
</html>