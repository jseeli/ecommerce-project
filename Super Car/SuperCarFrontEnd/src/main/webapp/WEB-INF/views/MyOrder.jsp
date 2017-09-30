<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>MyOrder Page</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/MyOrder.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
	</head>

 	<body>
		<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
		<br>
		<div id="myorder" class="container">
			<div class="row">
				<div class="thumbnail">
					<h2>Payment Remains</h2>
					<div class="table-responsive">
						<table id="notpaid" class="table table-bordered table-striped">
							<thead>
								<tr class="info">
									<th>Sr.No</th>
									<th>ProductName</th>
									<th>Quantity</th>
									<th>SubTotal</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty notpaid}"><td colspan="3" align="center">No Records</td></c:if>
								<c:forEach var="Nitems" varStatus="st" items="${notpaid}">
									<tr class="danger">
										<td>${st.count}</td>
										<td>${Nitems.productname}</td>
										<td>${Nitems.quantity}</td>
										<td>${Nitems.price * Nitems.quantity}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
				<br>
				<br>
				<br>
				<div class="thumbnail">
					<h2>Paid Items</h2>
					<div class="table-responsive">
						<table id="paid" class="table table-bordered table-striped">
							<thead>
								<tr class="info">
									<th>Sr.No</th>
									<th>ProductName</th>
									<th>Quantity</th>
									<th>SubTotal</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty paid}"><td colspan="3" align="center">No Records</td></c:if>
								<c:forEach var="Yitems" varStatus="st" items="${paid}">
									<tr class="success">
										<td>${st.count}</td>
										<td>${Yitems.productname}</td>
										<td>${Yitems.quantity}</td>
										<td>${Yitems.price * Yitems.quantity}</td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
		<br>
	    <br>
	    <br>
	</body>
</html>