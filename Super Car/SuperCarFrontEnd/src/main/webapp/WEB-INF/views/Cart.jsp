<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Cart</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Cart.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

	<body>
		<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
		<br>
		<div id="cart" class="container">
			<div class="row">
				<div class="thumbnail">
					<h2>Shopping List</h2>
					<div class="table-responsive">
						<table class="table table-bordered table-striped">
							<thead>
								<tr>
									<th>ProductName</th>
									<th>Quantity</th>
									<th>SubTotal</th>
									<th>Action</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty cartitemlist}"><td colspan="4" align="center">No Record Exists</td></c:if>
								<c:forEach var="cart" items="${cartitemlist}">
									<tr>
										<form action="<c:url value="/updateCartItem/${cart.cartitemid}"/>" method="get">
											<td>${cart.productname}</td>
											<td><input type="text" name="quantity" value="${cart.quantity}" Required/></td>
											<td>${cart.price * cart.quantity}</td>
											<td>
												<button type="submit" class="btn btn-success">UPDATE</button>
												<a type="button" class="btn btn-danger" href="<c:url value="/deleteCartItem/${cart.cartitemid}"/>">DELETE</a>
											</td>
										</form>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<ul class="pager">
							<li class="previous"><a href="${pageContext.request.contextPath}/Product">Continue Shopping</a></li>
							<li class="next"><a href="<c:url value="/OrderConfirmation"/>">Checkout</a></li>
						</ul>
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