<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Product Page</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Product.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

	<body>
	
		<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
		<br>
		<div id="product" class="container">
			<div class="row">
				<div class="thumbnail">
					<h2>Product List</h2>
					<div class="table-responsive">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ProductID</th>
									<th>ProductName</th>
									<th colspan="3">Images</th>
									<th>Price</th>
									<th>Quantity</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="p" items="${productList}">
									<tr>
										<td><a href="Productdesc/${p.productID}"><c:out value="${p.productID}"></c:out></a></td>
										<td><c:out value="${p.productName}"></c:out></td>
										<td colspan="3"><img  class="image-responsive" src="${pageContext.request.contextPath}/resources/images/${p.productImage}" height="150px" width="150px"></td>
										<td><c:out value="${p.price}"></c:out></td>
										<td><c:out value="1"></c:out></td>
										<td>
											<a type="button" class="btn btn-success" href="<c:url value=""/>">ADD TO CART</a>
										</td>
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
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	</body>
</html>