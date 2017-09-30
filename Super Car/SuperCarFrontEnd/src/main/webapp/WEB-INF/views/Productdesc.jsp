<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Product Description Page</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Productdesc.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

  	<body>
  		<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
  		<br>
  		<form action="<c:url value="/AddToCart/${proddesc.productID}"/>" method="post">
			<div id="productdesc" class="container">
				<div class="row">
					<div class="thumbnail">
						<h2>Product Details</h2>
						<div class="col-sm-11.5  col-lg-11.5">
							<div class="table-responsive">
								<table class="table table-bordered table-striped">
									<tr>
										<td rowspan="8"><img class="image-responsive" src="<c:url value="/resources/images/${proddesc.productImage}"/>"></td>
									</tr>
									<tr>
										<th>Product ID</th>
										<td>${proddesc.productID}</td>
									</tr>
									<tr>
										<th>Product Name</th>
										<td>${proddesc.productName}</td>
									</tr>
									<tr>
										<th>Supplier Name</th>
										<td>${proddesc.supplier.supplierName}</td>
									</tr>
									<tr>
										<th>Product Description</th>
										<td>${proddesc.description}</td>
									</tr>
									<tr>
										<th>Price</th>
										<td>${proddesc.price}</td>
									</tr>
									<tr>
										<th>Quantity</th>
										<td><input type="text" name="quantity"  class="form-control" value="1"/></td>
									</tr>
									<tr>
										<th>Action </th>
										<td><button type="submit" class="btn btn-success">Add To Cart</button></td>
									</tr>
								</table>
							</div>
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