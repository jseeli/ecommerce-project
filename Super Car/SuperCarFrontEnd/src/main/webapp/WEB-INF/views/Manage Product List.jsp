<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Product List</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Manage Product List.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>
	
	<body>
		<jsp:include page="/WEB-INF/views/AdminHeader.jsp"></jsp:include>
		<div id="manageproductlist" class="contianer">
			<h2>Product List</h2>
			<br>
			<div class="table-responsive">
				<table class="table table-bordered table-striped">
					<thead>
						<tr>
							<th>Sr.no</th>
							<th>ProductID</th>
							<th>ProductName</th>
							<th>Description</th>
							<th>Stock</th>
							<th>Price</th>
							<th>Category</th>
							<th>Supplier</th>
							<th>Images</th>
							<th colspan="2">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="p" varStatus="st" items="${productList}">
							<tr>
								<td><c:out value="${st.count}"></c:out></td>
								<td><c:out value="${p.productID}"></c:out></td>
								<td><c:out value="${p.productName}"></c:out></td>
								<td><c:out value="${p.description}"></c:out></td>
								<td><c:out value="${p.stock}"></c:out></td>
								<td><c:out value="${p.price}"></c:out></td>
								<td><c:out value="${p.category.categoryName}"></c:out></td>
								<td><c:out value="${p.supplier.supplierName}"></c:out></td>
								<td><img  class="image-responsive" src="${pageContext.request.contextPath}/resources/images/${p.productImage}" height="50px" width="50px"></td>
								<td>
									<!--<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>-->
									<a type="button" class="btn btn-info" href=" ${pageContext.request.contextPath}/updateProduct?productID=<c:out value="${p.productID}"></c:out>">EDIT</a>
									<a type="button" class="btn btn-danger" href="<c:url value="deleteProduct/${p.productID}"/>">DELETE</a>
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
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	</body>
</html>