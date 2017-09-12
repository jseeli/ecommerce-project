<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Lamborghini</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Lamborghini.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

	<body>
		<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
		
		<div id="top" class="container-fluid">
	      <img class="img-responsive" src="<spring:url value="/resources/images/logo.png"/>"/>
	      <h2>Lamborghini</h2>
	    </div>
	    
	    <div id="huracan" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/huracan.png"/>"/>
	        </div>
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2>lamborghini Huracan</h2>
	          <h4>
	            <span class="label label-success">4.5<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 50000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#huracanmodal">More Details</button>
	          <br>
	          <br>
	          <button class="btn btn-warning">Add Cart</button>
	          <button class="btn btn-warning"> Buy Now</button>
	          <br>
	          <br>
	        </div>
	      </div>
	    </div>
	
	    <br>
	
	    <div id="aventador" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2>lamborghini Aventador</h2>
	          <h4>
	            <span class="label label-success">4.7<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 75000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#aventadormodal">More Details</button>
	          <br>
	          <br>
	          <button class="btn btn-warning">Add Cart</button>
	          <button class="btn btn-warning"> Buy Now</button>
	          <br>
	          <br>
	        </div>
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/aventador.png"/>"/>
	        </div>
	      </div>
	    </div>
	
	    <br>
	
	    <div id="veneno" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/f11c59be428cfd5dec9c3953d38eb68a-1240-448.jpg"/>"/>
	        </div>
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2>lamborghini Veneno</h2>
	          <h4>
	            <span class="label label-success">4.8<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 85000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#venenomodal">More Details</button>
	          <br>
	          <br>
	          <button class="btn btn-warning">Add Cart</button>
	          <button class="btn btn-warning"> Buy Now</button>
	          <br>
	          <br>
	        </div>
	      </div>
	    </div>
	
	    <br>
	    
	    <div id="huracanmodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ENGINE:</medium></h4>
	              <tr>
	                <th>TYPE</th>
	                <td>V10, 90°, MPI (Multi Point Injection)+ DSI (Direct Stratified Injection)</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT</th>
	                <td>5.204 cm3 (317.57 cu in)</td>
	              </tr>
	              <tr>
	                <th>BORE x STROKE</th>
	                <td>84,5 x 92,8 mm (3.33 x 3.65 in)</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO</th>
	                <td>12,7:1</td>
	              </tr>
	              <tr>
	                <th>MAX. POWER</th>
	                <td>640 HP (470 kW) @ 8.000 rpm</td>
	              </tr>
	              <tr>
	                <th>MAX. TORQUE</th>
	                <td>600 Nm @ 6.500 rpm</td>
	              </tr>
	              <tr>
	                <th>WEIGHT-TO-POWER RATIO</th>
	                <td>2,15 kg/HP</td>
	              </tr>
	              <tr>
	                <th>LUBRICATION</th>
	                <td>Dry sump</td>
	              </tr>
	              <tr>
	                <th>EMISSION CONTROL</th>
	                <td>Euro 6 - LEV 2</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>TRANSMISSION:</medium></h4>
	              <tr>
	                <th>TRANSMISSION TYPE</th>
	                <td>Electronically controlled all-wheel drive system (Haldex gen. V)  with rear mechanical self-locking differential</td>
	              </tr>
	              <tr>
	                <th>GEARBOX</th>
	                <td>Dual clutch gearbox LDF (Lamborghini Doppia Frizione) with 7 speeds</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>PERFORMANCE:</medium></h4>
	              <tr>
	                <th>MAX. SPEED</th>
	                <td> > 325 km/h (> 201 mph)</td>
	              </tr>
	              <tr>
	                <th>ACCELERATION 0-100 KM/H (0-62 MPH)</th>
	                <td> 2,9 s</td>
	              </tr>
	              <tr>
	                <th>ACCELERATION 0-200 KM/H (0-124 MPH)</th>
	                <td> 8,9 s</td>
	              </tr>
	              <tr>
	                <th>BRAKING 100-0 KM/H (62-0 MPH)</th>
	                <td> 31 m</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BODY AND CHASSIS:</medium></h4>
	              <tr>
	                <th>CHASSIS</th>
	                <td> Hybrid in aluminum and carbon fiber</td>
	              </tr>
	              <tr>
	                <th>BODY</th>
	                <td> Aluminum and synthetic material</td>
	              </tr>
	              <tr>
	                <th>EXTERNAL MIRRORS</th>
	                <td> Electrically operated, heated and foldable</td>
	              </tr>
	              <tr>
	                <th>AERODYNAMICS</th>
	                <td> Front and Rear spoiler in visible Forged Composites® with active aerodynamic system "ALA"</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WHEELS:</medium></h4>
	              <tr>
	                <th>RIMS - FRONT</th>
	                <td> 20'' Mimas forged rims; 8.5 J x 20 ET42</td>
	              </tr>
	              <tr>
	                <th>RIMS - REAR</th>
	                <td> 20'' Mimas forged rims; 11J x 20 ET40</td>
	              </tr>
	              <tr>
	                <th>TIRES - FRONT</th>
	                <td> 245/30 R20</td>
	              </tr>
	              <tr>
	                <th>TIRES - REAR</th>
	                <td> 305/30 R20</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>STEERING AND SUSPENSION:</medium></h4>
	              <tr>
	                <th>CONTROL SYSTEMS</th>
	                <td> Electronic Stability Control (integrated ABS and TCS)</td>
	              </tr>
	              <tr>
	                <th>SUSPENSION TYPE</th>
	                <td> Passive suspension</td>
	              </tr>
	              <tr>
	                <th>SUSPENSION GEOMETRY</th>
	                <td> Double wishbone fully independent suspension</td>
	              </tr>
	              <tr>
	                <th>STEERING TYPE</th>
	                <td> Electro-mechanical assisted power steering</td>
	              </tr>
	              <tr>
	                <th>STEERING SYSTEM</th>
	                <td> Servotronic</td>
	              </tr>
	              <tr>
	                <th>DYNAMIC OPTIONS</th>
	                <td> Options available:   - electronically controlled magneto-rheologic suspension  - Lamborghini Dynamic Steering (with variable steering ratio)</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BRAKING SYSTEM:</medium></h4>
	              <tr>
	                <th>BRAKES</th>
	                <td> Carbon-ceramic brakes with fixed calipers monoblock in aluminum with 6 pistons (front) and 4 pistons (rear)</td>
	              </tr>
	              <tr>
	                <th>FRONT BRAKES</th>
	                <td> Carbon-ceramic discs - ventilated and cross drilled with 380 mm diameter and 38 mm thickness</td>
	              </tr>
	              <tr>
	                <th>REAR BRAKES</th>
	                <td> Carbon-ceramic discs - ventilated and cross drilled with 356 mm diameter and 32 mm thickness</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>SAFETY:</medium></h4>
	              <tr>
	                <th>AIRBAGS</th>
	                <td> Driver, passenger and side airbags; kneels airbags in selected markets</td>
	              </tr>
	              <tr>
	                <th>PASSIVE SAFETY</th>
	                <td> Front and rear specific collapsible areas; side protection system</td>
	              </tr>
	              <tr>
	                <th>ACTIVE SAFETY</th>
	                <td> Electronic Stability Control (ABS and TCS integrated)</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DIMENSIONS:</medium></h4>
	              <tr>
	                <th>LENGTH</th>
	                <td> 4.506 mm (177.4 in)</td>
	              </tr>
	              <tr>
	                <th>WIDTH EXCL. MIRRORS</th>
	                <td> 1.924 mm (75.75 in)</td>
	              </tr>
	              <tr>
	                <th>WIDTH INCL. MIRRORS</th>
	                <td> 2.236 mm (88.03 in)</td>
	              </tr>
	              <tr>
	                <th>HEIGHT</th>
	                <td> 1.165 mm (45.87 in)</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE</th>
	                <td> 2.620 mm (103.15 in)</td>
	              </tr>
	              <tr>
	                <th>DRY WEIGHT</th>
	                <td> 1.382 kg (3,047 lb)</td>
	              </tr>
	              <tr>
	                <th>WEIGHT DISTRIBUTION (FR. - REAR)</th>
	                <td> 43 / 57</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>CONSUMPTION:</medium></h4>
	              <tr>
	                <th>COMBINED</th>
	                <td> 13,7 l/100 km</td>
	              </tr>
	              <tr>
	                <th>URBAN</th>
	                <td> 19.6 l/100 km</td>
	              </tr>
	              <tr>
	                <th>HIGHWAY</th>
	                <td> 10.3 l/100 km</td>
	              </tr>
	              <tr>
	                <th>CO2 EMISSIONS</th>
	                <td> 314 g/km</td>
	              </tr>
	              <tr>
	                <th>EMISSION LAW</th>
	                <td> Regulation (EC) No. 715/2008</td>
	              </tr>
	            </table>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <div id="aventadormodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ENGINE:</medium></h4>
	              <tr>
	                <th>TYPE</th>
	                <td>V12, 60°, MPI (Multi Point Injection)</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT</th>
	                <td>6.498 cm³ (396.5 cu in)</td>
	              </tr>
	              <tr>
	                <th>BORE x STROKE</th>
	                <td>95 mm x 76,4 mm (3.74 x 3.01 in)</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO</th>
	                <td>11,8:1</td>
	              </tr>
	              <tr>
	                <th>MAX. POWER</th>
	                <td>740 CV (544 kW) @ 8.400 rpm</td>
	              </tr>
	              <tr>
	                <th>MAX. TORQUE</th>
	                <td>690 Nm (507 lb.-ft.) @ 5.500 rpm</td>
	              </tr>
	              <tr>
	                <th>WEIGHT-TO-POWER RATIO</th>
	                <td>2,13 kg/CV (4.69 lb/CV)</td>
	              </tr>
	              <tr>
	                <th>LUBRICATION</th>
	                <td>Dry sump</td>
	              </tr>
	              <tr>
	                <th>EMISSION CONTROL</th>
	                <td>Euro 6 - LEV 2</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>TRANSMISSION:</medium></h4>
	              <tr>
	                <th>TRANSMISSION TYPE</th>
	                <td>Electronically controlled all-wheel drive system (Haldex gen. IV)  with rear mechanical self-locking differential</td>
	              </tr>
	              <tr>
	                <th>GEARBOX</th>
	                <td>ISR (Independent Shifting Rods) gearbox with 7 speeds</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>PERFORMANCE:</medium></h4>
	              <tr>
	                <th>MAX. SPEED</th>
	                <td> 350 km/h (217 mph)</td>
	              </tr>
	              <tr>
	                <th>ACCELERATION 0-100 KM/H (0-62 MPH)</th>
	                <td> 2,9 s</td>
	              </tr>
	              <tr>
	                <th>ACCELERATION 0-200 KM/H (0-124 MPH)</th>
	                <td> 8,8 s</td>
	              </tr>
	              <tr>
	                <th>ACCELERATION 0-300 KM/H (0-186 MPH)</th>
	                <td> 24,2 s</td>
	              </tr>
	              <tr>
	                <th>BRAKING 100-0 KM/H (62-0 MPH)</th>
	                <td> 31 m</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BODY AND CHASSIS:</medium></h4>
	              <tr>
	                <th>CHASSIS</th>
	                <td> Monocoque in carbon fiber</td>
	              </tr>
	              <tr>
	                <th>BODY</th>
	                <td> Engine bonnet, rear air inlets and spoiler in carbon fiber; other panels in aluminum and synthetic material</td>
	              </tr>
	              <tr>
	                <th>EXTERNAL MIRRORS</th>
	                <td> Electrically operated, heated and foldable</td>
	              </tr>
	              <tr>
	                <th>AERODYNAMICS</th>
	                <td> Rear electronically operated spoiler with 3 positions; completely panelled underbody</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WHEELS:</medium></h4>
	              <tr>
	                <th>RIMS - FRONT</th>
	                <td> 20'' DIONE silver forged aluminum alloy rims; 9J x 20 ET32.2</td>
	              </tr>
	              <tr>
	                <th>RIMS - REAR</th>
	                <td> 21'' DIONE silver forged aluminum alloy rims; 13J x 21 ET66.7</td>
	              </tr>
	              <tr>
	                <th>TIRES - FRONT</th>
	                <td> 255/30 ZR20</td>
	              </tr>
	              <tr>
	                <th>TIRES - REAR</th>
	                <td> 355/25 ZR21</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>STEERING AND SUSPENSION:</medium></h4>
	              <tr>
	                <th>CONTROL SYSTEMS</th>
	                <td> Electronic Stability Control (ABS and TCS integrated)</td>
	              </tr>
	              <tr>
	                <th>SUSPENSION TYPE</th>
	                <td> Push rod magneto-rheologic active front and rear suspension with horizontal dampers and springs</td>
	              </tr>
	              <tr>
	                <th>SUSPENSION GEOMETRY</th>
	                <td> Double wishbone fully independent suspension</td>
	              </tr>
	              <tr>
	                <th>STEERING TYPE</th>
	                <td> Hydraulic assisted power steering</td>
	              </tr>
	              <tr>
	                <th>STEERING SYSTEM</th>
	                <td> LDS (Lamborghini Dynamic Steering) with variable steering ratio</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BRAKING SYSTEM:</medium></h4>
	              <tr>
	                <th>BRAKES</th>
	                <td> Carbon-ceramic brakes with fixed calipers monoblock in aluminum with 6 pistons (front) and 4 pistons (rear)</td>
	              </tr>
	              <tr>
	                <th>FRONT BRAKES</th>
	                <td> Carbon-ceramic discs ventilated and cross drilled with 400 mm diameter and 38 mm thickness</td>
	              </tr>
	              <tr>
	                <th>REAR BRAKES</th>
	                <td> Carbon-ceramic discs ventilated and cross drilled with 380 mm diameter and 38 mm thickness</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>SAFETY:</medium></h4>
	              <tr>
	                <th>AIRBAGS</th>
	                <td> Driver, passenger, side airbags. Knee airgbags only for specific markets</td>
	              </tr>
	              <tr>
	                <th>PASSIVE SAFETY</th>
	                <td> Front and rear specific collapsible areas; side protection system</td>
	              </tr>
	              <tr>
	                <th>ACTIVE SAFETY</th>
	                <td> Electronic Stability Control (ABS and TCS integrated)</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DIMENSIONS:</medium></h4>
	              <tr>
	                <th>LENGTH</th>
	                <td> 4.797 mm (188.86 in)</td>
	              </tr>
	              <tr>
	                <th>WIDTH EXCL. MIRRORS</th>
	                <td> 2.030 mm (79.92 in)</td>
	              </tr>
	              <tr>
	                <th>WIDTH INCL. MIRRORS</th>
	                <td> 2.265 mm (89.17 in)</td>
	              </tr>
	              <tr>
	                <th>HEIGHT</th>
	                <td> 1.136 mm (44.72 in)</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE</th>
	                <td> 2.700 mm (106.30 in)</td>
	              </tr>
	              <tr>
	                <th>DRY WEIGHT</th>
	                <td> 1.575 kg (3,472 lb)</td>
	              </tr>
	              <tr>
	                <th>WEIGHT DISTRIBUTION (FR. - REAR)</th>
	                <td> 43 / 57</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>CONSUMPTION:</medium></h4>
	              <tr>
	                <th>COMBINED</th>
	                <td> 16,9 l/100 km</td>
	              </tr>
	              <tr>
	                <th>URBAN</th>
	                <td> 26,2 l/100 km (11 mpg)</td>
	              </tr>
	              <tr>
	                <th>HIGHWAY</th>
	                <td> 11,6 l/100 km (18 mpg)</td>
	              </tr>
	              <tr>
	                <th>CO2 EMISSIONS</th>
	                <td> 394 g/km</td>
	              </tr>
	              <tr>
	                <th>EMISSION LAW</th>
	                <td> Regulation (EC) No. 715/2007</td>
	              </tr>
	            </table>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <div id="venenomodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ENGINE:</medium></h4>
	              <tr>
	                <th>TYPE</th>
	                <td>V12, 60°, MPI (Multi Point Injection)</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT</th>
	                <td>6.498 cm³ (396.5 cu in)</td>
	              </tr>
	              <tr>
	                <th>BORE x STROKE</th>
	                <td>95 mm x 76,4 mm (3.74 x 3.01 in)</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO</th>
	                <td>11,8:1</td>
	              </tr>
	              <tr>
	                <th>MAX. POWER</th>
	                <td>750 CV (552 kW) @ 8.400 rpm</td>
	              </tr>
	              <tr>
	                <th>MAX. TORQUE</th>
	                <td>690 Nm (507 lb.-ft.) @ 5.500 rpm</td>
	              </tr>
	              <tr>
	                <th>WEIGHT-TO-POWER RATIO</th>
	                <td>1.99 kg/CV (4.35 lb/CV)</td>
	              </tr>
	              <tr>
	                <th>LUBRICATION</th>
	                <td>Dry sump</td>
	              </tr>
	              <tr>
	                <th>EMISSION CONTROL</th>
	                <td>Euro 6 - LEV 2</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>TRANSMISSION:</medium></h4>
	              <tr>
	                <th>TRANSMISSION TYPE</th>
	                <td>Electronically controlled all-wheel drive system (Haldex gen. IV)  with rear mechanical self-locking differential</td>
	              </tr>
	              <tr>
	                <th>GEARBOX</th>
	                <td>ISR (Independent Shifting Rods) gearbox with 7 speeds</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>PERFORMANCE:</medium></h4>
	              <tr>
	                <th>MAX. SPEED</th>
	                <td> 355 km/h (221 mph)</td>
	              </tr>
	              <tr>
	                <th>ACCELERATION 0-100 KM/H (0-62 MPH)</th>
	                <td> 2,9 s</td>
	              </tr>
	             </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BODY AND CHASSIS:</medium></h4>
	              <tr>
	                <th>CHASSIS</th>
	                <td> Monocoque in carbon fiber</td>
	              </tr>
	              <tr>
	                <th>BODY</th>
	                <td> Exteriors in carbon fiber</td>
	              </tr>
	              <tr>
	                <th>OPENING ROOF</th>
	                <td>Open roof with fixed roll-bar System</td>
	              </tr>
	              <tr>
	                <th>EXTERNAL MIRRORS</th>
	                <td> Electrically operated, heated and foldable</td>
	              </tr>
	              <tr>
	                <th>AERODYNAMICS</th>
	                <td> Spoiler manually adjustable with 3 position; completely panelled underbody</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WHEELS:</medium></h4>
	              <tr>
	                <th>RIMS - FRONT</th>
	                <td> 20'' Specific forged rims; 9J x 20 ET32.2</td>
	              </tr>
	              <tr>
	                <th>RIMS - REAR</th>
	                <td> 21'' Specific forged rims; 13J x 21 ET66.7</td>
	              </tr>
	              <tr>
	                <th>TIRES - FRONT</th>
	                <td> 255/30 ZR20</td>
	              </tr>
	              <tr>
	                <th>TIRES - REAR</th>
	                <td> 355/25 ZR21</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>STEERING AND SUSPENSION:</medium></h4>
	              <tr>
	                <th>CONTROL SYSTEMS</th>
	                <td> Electronic Stability Control (ABS e TCS integrati)</td>
	              </tr>
	              <tr>
	                <th>SUSPENSION TYPE</th>
	                <td> Push rod passive mono-tube front and rear suspension with horizontal dampers and springs</td>
	              </tr>
	              <tr>
	                <th>SUSPENSION GEOMETRY</th>
	                <td> Double wishbone fully independent suspension</td>
	              </tr>
	              <tr>
	                <th>STEERING TYPE</th>
	                <td> Hydraulic assisted power steering</td>
	              </tr>
	              <tr>
	                <th>STEERING SYSTEM</th>
	                <td> Servotronic</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BRAKING SYSTEM:</medium></h4>
	              <tr>
	                <th>BRAKES</th>
	                <td> Carbon-ceramic brakes with fixed calipers monoblock in aluminum with 6 pistons (front) and 4 pistons (rear)</td>
	              </tr>
	              <tr>
	                <th>FRONT BRAKES</th>
	                <td> Carbon-ceramic discs ventilated and cross drilled with 400 mm diameter and 38 mm thickness</td>
	              </tr>
	              <tr>
	                <th>REAR BRAKES</th>
	                <td> Carbon-ceramic discs ventilated and cross drilled with 380 mm diameter and 38 mm thickness</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>SAFETY:</medium></h4>
	              <tr>
	                <th>AIRBAGS</th>
	                <td> Driver, passenger, side and Kneels airgbags</td>
	              </tr>
	              <tr>
	                <th>PASSIVE SAFETY</th>
	                <td> Front and rear specific collapsible areas; side protection system</td>
	              </tr>
	              <tr>
	                <th>ACTIVE SAFETY</th>
	                <td> Electronic Stability Control (ABS and TCS integrated)</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DIMENSIONS:</medium></h4>
	              <tr>
	                <th>LENGTH</th>
	                <td> 5.020 mm (197.64 in)</td>
	              </tr>
	              <tr>
	                <th>WIDTH EXCL. MIRRORS</th>
	                <td> 2.075 mm (81.69 in)</td>
	              </tr>
	              <tr>
	                <th>WIDTH INCL. MIRRORS</th>
	                <td> n.a</td>
	              </tr>
	              <tr>
	                <th>HEIGHT</th>
	                <td> 1.165 mm (45.87 in)</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE</th>
	                <td> 2.700 mm (106.30 in)</td>
	              </tr>
	              <tr>
	                <th>DRY WEIGHT</th>
	                <td> 1.490 kg (3,285 lb)</td>
	              </tr>
	              <tr>
	                <th>WEIGHT DISTRIBUTION (FR. - REAR)</th>
	                <td> 43 / 57</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>CONSUMPTION:</medium></h4>
	              <tr>
	                <th>COMBINED</th>
	                <td> 17,2 l/100 km</td>
	              </tr>
	              <tr>
	                <th>URBAN</th>
	                <td> 27,3 l/100 km</td>
	              </tr>
	              <tr>
	                <th>HIGHWAY</th>
	                <td> 11,3 l/100 km (18 mpg)</td>
	              </tr>
	              <tr>
	                <th>CO2 EMISSIONS</th>
	                <td> 398 g/km</td>
	              </tr>
	              <tr>
	                <th>EMISSION LAW</th>
	                <td> Regulation (EC) No. 715/2007</td>
	              </tr>
	            </table>
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