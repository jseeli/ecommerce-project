<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Order Confirmation Page</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/OrderConfirmation.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
	
		<script type="text/javascript">
			function payment()
			{
				var Credit = document.getElementById('Credit').checked;
				var NetBank = document.getElementById('NetBank').checked;
				var COD = document.getElementById('COD').checked;
				 
				if(Credit==false ^ NetBank==false ^ COD==false)
				{
					alert("Please select at least one payment option");
					return false;
				}
				else
				{
					alert("Thank You for shopping and visit again, happy shopping!");
					return true;
				}
			}
		</script>
	</head>

 	<body>
		<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
		<br>
		<div id="order" class="container">
			<div class="row">
				<div class="thumbnail">
					<h2>Order Confirmation Page</h2>
					<div class="table-responsive">
						<table id="items" class="table table-bordered table-striped">
							<thead>
								<tr class="info">
									<th>Sr.No</th>
									<th>ProductName</th>
									<th>Quantity</th>
									<th>SubTotal</th>
								</tr>
							</thead>
							<tbody>
								<c:if test="${empty Cartitems}"><td colspan="4" align="center">All Payments Done</td></c:if>
								<c:forEach var="items" varStatus="st" items="${Cartitems}">
									<tr>
										<td>${st.count}</td>
										<td>${items.productname}</td>
										<td>${items.quantity}</td>
										<td>${items.price * items.quantity}</td>
									</tr>
								</c:forEach>
								<tr>
									<th colspan="3">Grand Total</th>
									<th>${grandtotal}</th>
								</tr>
							</tbody>
						</table>
						<br>
						<br>
						<h2>Payment Options</h2>
						<form name="pay" action="<c:url value="/PaymentConfirmation"/>" method="get">
							<table id="payment" class="table table-bordered table-striped">
								<thead>
									<tr class="info">
										<th colspan="3">Payment Mode</th>
									</tr>
								</thead>
								<tbody>
									<tr class="warning">
										<td><input type="checkbox" name="Paymode" value="Credit" id="Credit"> Credit Card</td>
										<td><input type="checkbox" name="Paymode" value="NetBank" id="NetBank"> Internet Banking</td>
										<td><input type="checkbox" name="Paymode" value="COD" id="COD"> Cash on Delivery</td>
									</tr>
									<tr class="active">
										<td>Shipping Address</td>
										<td colspan="2"><textarea class="well well-lg" required></textarea></td>
									</tr>
									<tr>
										<td colspan="3"><button type="submit" class="btn btn-success" onclick="return payment();">Pay</button></td>
									</tr>
								</tbody>
							</table>
						</form>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		<br>
	</body>
</html>