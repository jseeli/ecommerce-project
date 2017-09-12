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
		
		<div id="product" class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/bugatti_veyron_16.4_grand_sport5.jpg"/>" class="img-rounded img-responsive" alt="Bugatti Veyron" style="width:100%">
						<div class="caption">
							<c:forEach items="catlist" var="cat">
								<h4 class="text-center"><a href="${pageContext.request.contextPath}/Bugatti">Bugatti Veyron</a></h4>
							</c:forEach>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/pagani-1.jpg"/>" class="img-rounded img-responsive" alt="Pagani" style="width:100%">
						<div class="caption">
							<h4 class="text-center"><a href="${pageContext.request.contextPath}/Pagani">Pagani</a></h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/lamborghini-huracan.jpg"/>" class="img-rounded img-responsive" alt="Lamborghini" style="width:100%">
						<div class="caption">
							<h4 class="text-center"><a href="${pageContext.request.contextPath}/Lamborghini">Lamborghini</h4>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/Mercedes-Benz-SLS-AMG.jpg"/>" class="img-rounded img-responsive" alt="Mercedes Benz" style="width:100%">
						<div class="caption">
							<h4 class="text-center"><a href="${pageContext.request.contextPath}/Mercedes Benz">Mercedes Benz</h4>
						</div>
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