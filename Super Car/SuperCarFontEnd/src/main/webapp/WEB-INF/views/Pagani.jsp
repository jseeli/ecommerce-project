<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Pagani</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Pagani.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

	<body>
		<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
		
		<div id="top" class="container-fluid">
	      <img src="<spring:url value="/resources/images/148748.jpg"/>">
	      <h2>Pagani</h2>
	    </div>

	    <div id="huayra" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:15px;">
	      <div class="row">
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/Pagani-PNG-Picture.png"/>"/>
	        </div>
	        <div class="col-sm-6" style="padding-left:40px;">
	            <h2>Pagani Huayra</h2>
	            <h4>
	              <span class="label label-success">4.9<span class="glyphicon glyphicon-star"></span></span>
	            </h4>
	            <h3>
	              Price
	              <br>
	              Rs. 95000000.00
	            </h3>
	            <button class="btn btn-info" data-toggle="modal" data-target="#huayramodal">More Details</button>
	            <br>
	            <br>
	            <button class="btn btn-warning">Add Cart</button>
	            <button class="btn btn-warning"> Buy Now</button>
	            <br>
	            <br>
	        </div>
	       </div>
	      </div>
	      
	      <div id="huayramodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Pagani Huayra</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>Technical Specification:</medium></h4>
	              <tr>
	                <th>CHASSIS:</th>
	                <td>Pagani Carbo-Titanium & Carbo-Triax HP52 monocoque, front and rear frame in steel tubes</td>
	              </tr>
	              <tr>
	                <th>ENGINE:</th>
	                <td>Mercedes-Benz AMG V12 60°; engine capacity 5980 cc.</td>
	              <tr>
	              <tr>
	                <th>MAX. POWER:</th>
	                <td>(562)kw 764/5500 rpm</td>
	              <tr>
	              <tr>
	                <th>MAX. TORQUE:</th>
	                <td>Nm/rpm +1000/2300-4300</td>
	              <tr>
	              <tr>
	                <th>TRANSMISSION:</th>
	                <td>Rear engine longitudinal central; rear-wheel Drive</td>
	              <tr>
	              <tr>
	                <th>GEARBOX:</th>
	                <td>AMT next generation 7-speed (plus reverse) with electronic mechanical differential</td>
	              <tr>
	              <tr>
	                <th>BRAKES:</th>
	                <td>4 ventilated discs Brembo CCM, brake unit; ant. 380x34 mm 6 piston caliper monolithic; post. 380x34 mm 4 piston caliper monolithic</td>
	              <tr>
	              <tr>
	                <th>WHEELS:</th>
	                <td>Forged aluminum alloy APP monolithic; front 20 inch, 21 inch rear</td>
	              <tr>
	              <tr>
	                <th>TYRES:</th>
	                <td>Pirelli P Zero Corsa, Pirelli P Zero Trofeo R</td>
	              <tr>
	              <tr>
	                <th>SUSPENSIONS:</th>
	                <td>4-wheels independent double wishbone; upper rocker arm with coil spring and adjustable shock absorber; anti-roll bar; HiForg forged and CNC machined arms; forged and machine controlled uprights.</td>
	              <tr>
	              <tr>
	                <th>WEIGHT:</th>
	                <td>(Kg) 1280 kg</td>
	              <tr>
	            </table>
	            <br>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
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