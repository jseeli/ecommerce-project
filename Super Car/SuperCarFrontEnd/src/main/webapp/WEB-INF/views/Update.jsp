<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Update Form</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Update.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>
	
	<body>
		<jsp:include page="/WEB-INF/views/AdminHeader.jsp"></jsp:include>
			<div class="container-fluid" style="background-color:#2196F3;color:#fff;height:100px;">
				<h1>Update Forms</h1>
			</div>
			
			<br>
			
			<div class="container">
				<div class="row">
					<nav class="col-sm-3">
						<ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="205">
					        <li class="active"><a href="#section1">Product</a></li>
					        <li><a href="#section2">Category</a></li>
					        <li><a href="#section3">Supplier</a></li>
						</ul>
					</nav>
   		 			
   		 			<div id="section1" class="container">
   		 				<div class="col-sm-9">
							<div class="box">
   		 						<form action="productupdate" method="post" enctype="multipart/form-data">
	   		 						<input type="hidden" name="ProductID" value="${pro.productID}"/>
									<h2>Products</h2>
									<table>
										<tr>
											<td>Product Name: <input type="text" class="form-control" name="ProductName" value="${pro.productName }" Required/></td>
										</tr>
										<tr>
											<td>Product Description: <input type="text" class="form-control" name="Description" value="${pro.description }" Required/></td>
										</tr>
										<tr>
											<td>Product Stock: <input type="text" class="form-control" name="Stock" value="${pro.stock}" Required/></td>
										</tr>
										<tr>
											<td>Product Price: <input type="text" class="form-control" name="Price" value="${pro.price}" Required/></td>
										</tr>
										<tr>
											<td>Select Category: </td>
										</tr>
										<tr>
											<td>
												<select class="form-control" name="pcategory" Required>
													<c:forEach items="${catList}" var="cat">
														<option value="${cat.categoryID }">${cat.categoryName }</option>
													</c:forEach>
												</select>
											</td>
										</tr>
										<tr>
											<td>Select Supplier: </td>
										</tr>
										<tr>
											<td>
												<Select class="form-control" name="psupplier" Required>
													<c:forEach items="${supList}" var="sup">
														<option value="${sup.supplierID}">${sup.supplierName}</option>
													</c:forEach>
												</Select>
											</td>
										</tr>
										<tr>
											<td>Product Image:
												<input type="file" class="form-control" accept="images/*" method="post" enctype="multipart/form-data" name="Productimage"/>
											</td>
										</tr>
									</table>
									<br>
									<button type="submit" class="btn">UPDATE</button>
									<!-- <button type="reset" class="btn btn-danger">Cancel</button> -->
								</form>
							</div>
						</div>
					</div>
				
					<br>
					
					<nav class="col-sm-3"></nav>
					
   		 			<div id="section2" class="container">
   		 				<div class="col-sm-9">
   		 					<div class="box">
   		 						<form action="categoryupdate" method="post">
   		 						<input type="hidden" name="CategoryID" value="${cat.categoryID}"/>
									<h2>Category</h2>
									<table>
										<tr>
											<td>Category Name: <input type="text" class="form-control" name="CategoryName" value="${cat.categoryName }" Required/></td>
										</tr>
									</table>
									<button type="submit" class="btn">UPDATE</button>
									<!-- <button type="reset" class="btn btn-danger">Cancel</button>-->
								</form>
							</div>
   		 				</div>
   		 			</div>
   		 	
   		 			<br>
					
					<nav class="col-sm-3"></nav>
					
   		 			<div id="section3" class="container">
   		 				<div class="col-sm-9">
  		 					<div class="box">
   		 						<form action="supplierupdate" method="post">
   		 						<input type="hidden" name="SupplierID" value="${sup.supplierID}"/>
									<h2>Supplier</h2>
									<table>
										<tr>
											<td>Supplier Name: <input type="text" class="form-control" name="SupplierName" value="${sup.supplierName }" Required/></td>
										</tr>
									</table>
									<button type="submit" class="btn">UPDATE</button>
									<!-- <button type="reset" class="btn btn-danger">Cancel</button>-->
								</form>
							</div>
   		 				</div>
   		 			</div>
				</div>
			</div>
			<br>
			<br>
			<br>
	</body>
</html>