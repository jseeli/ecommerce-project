<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Super car</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

	<body>
		<nav id="TopNavBar" class="navbar navbar-default navbar-fixed-top" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="${pageContext.request.contextPath}/UserHome">Super Car</a>
				</div>
				<div class="collapse navbar-collapse" id="navbar">
					<ul class="nav navbar-nav">
						<li><a href="${pageContext.request.contextPath}/Product">Products</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a href="${pageContext.request.contextPath}/UserHome"><img src="<spring:url value="/resources/icons/home1.png"/>" alt="home" style="width:16px; margin-top:-5px"> Home</a></li>
						<li><a href="#Cart"><img src="<spring:url value="/resources/icons/cart icon.png"/>" alt="home" style="width:16px; margin-top:-5px"> Cart</a></li>
						<li><a href="#My Order"> My Order</a></li>
						<li><a href="${pageContext.request.contextPath}/login"> <span class="glyphicon glyphicon-log-out" style="width:16px;"></span> Logout</a></li>
						<li><a href="#Contact"><img src="<spring:url value="/resources/icons/contact_book.png"/>" alt="Contact_book" style="width:17px; margin-top:-7px"> Contact</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</body>
</html>