<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Supplier List</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Manage Supplier List.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>
	
	<body>
		<jsp:include page="/WEB-INF/views/AdminHeader.jsp"></jsp:include>
		<div id="managesupplierlist" class="container">
			<h2>Supplier List</h2>
			<br>
			<div class="col-sm-11.5  col-lg-11.5">
				<div class="table-responsive">
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>Sr.no</th>
								<th>Supplier ID</th>
								<th>Supplier Name</th>
								<th colspan="2">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${supplierList}" var="supplier" varStatus="st">
								<tr>
									<td><c:out value="${st.count}"></c:out></td>
									<td>${supplier.supplierID}</td>
									<td>${supplier.supplierName}</td>
									<td>
										<!--<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>-->
										<a type="button" class="btn btn-info" href=" ${pageContext.request.contextPath}/updateSupplier?supplierID=<c:out value="${supplier.supplierID}"></c:out>">EDIT</a>
										<a type="button" class="btn btn-danger" href="<c:url value="deleteSupplier/${supplier.supplierID}"/>">DELETE</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
	</body>
</html>