<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Product</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/ProductForm.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>
	
	<body>
		<jsp:include page="/WEB-INF/views/AdminHeader.jsp"></jsp:include>
		<form action="saveproduct" method="post" enctype="multipart/form-data">
			<div class="container">
				<div class="row">
					<div class="col-sm-12 col-md-8 col-lg-6">
						<div class="box">
							<h2>Products</h2>
							<table>
								<tr>
									<td>Product Name: <input type="text" class="form-control" name="ProductName" Required/></td>
								</tr>
								<tr>
									<td>Product Description: <input type="text" class="form-control" name="Description" Required/></td>
								</tr>
								<tr>
									<td>Product Stock: <input type="text" class="form-control" name="Stock" Required/></td>
								</tr>
								<tr>
									<td>Product Price: <input type="text" class="form-control" name="Price" Required/></td>
								</tr>
								<tr>
									<td>Select Category: </td>
									<td>
										<select class="form-control" name="pcategory" Required>
											<option value="">Category</option>
											<c:forEach items="${categoryList}" var="cat">
												<option value="${cat.categoryID }">${cat.categoryName }</option>
											</c:forEach>
										</select>
									</td>
								</tr>
								<tr>
									<td>Select Supplier: </td>
									<td>
										<Select class="form-control" name="psupplier" Required>
											<option value="">Supplier</option>
											<c:forEach items="${supplierList}" var="sup">
												<option value="${sup.supplierID}">${sup.supplierName}</option>
											</c:forEach>
										</Select>
									</td>
								</tr>
								<tr>
									<td>Product Image:
										<input type="hidden" class="form-control" accept="/resouces/images/*" name="ProductImage"/>
									</td>
								</tr>
								<tr>
									<td>
										<input type="file" accept="/resouces/images/*" name="Productimage"/>
									</td>
								</tr>
							</table>
							<button type="submit" class="btn btn-success">Submit</button>
							<button type="reset" class="btn btn-danger">Cancel</button>
						</div>
					</div>
				</div>
			</div>
		</form>
		<br>
		<br>
		<br>
		<br>
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	</body>
</html>