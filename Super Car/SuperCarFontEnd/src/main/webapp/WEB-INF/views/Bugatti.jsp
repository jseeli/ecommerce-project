<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Bugatti Veyron</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Bugatti.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

	<body>
		<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
		
		<div id="top" class="container-fluid">
	      <img class="img-responsive" src="<spring:url value="/resources/images/Bugattilogo.png"/>"/>
	      <h2>Bugatti</h2>
	    </div>
	    
	    <div id="veyron" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2>Bugatti Veyron 16.4</h2>
	          <h4>
	            <span class="label label-success">4.9<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 95000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#veyronmodal">More Details</button>
	          <br>
	          <br>
	          <button class="btn btn-warning">Add Cart</button>
	          <button class="btn btn-warning">Buy Now</button>
	          <br>
	          <br>
	        </div>
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/Bugatti-PNG-Free-Download.png"/>"/>
	        </div>
	      </div>
	    </div> 
		    
	    <br>
	
	    <div id="veyrongs" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/bugatti-prof.png"/>"/>
	        </div>
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2> Bugatti Veyron 16.4 Grand Sport</h2>
	          <h4>
	            <span class="label label-success">4.9<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 100000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#veyrongsmodal">More Details</button>
	          <br>
	          <br>
	          <button class="btn btn-warning">Add Cart</button>
	          <button class="btn btn-warning">Buy Now</button>
	          <br>
	          <br>
	        </div>
	      </div>
	    </div>
	
	    <br>
	
	    <div id="veyrongsv" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2> Bugatti Veyron 16.4 Grand Sport Vitesse</h2>
	          <h4>
	            <span class="label label-success">4.9<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 150000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#veyrongsvmodal">More Details</button>
	          <br>
	          <br>
	          <button class="btn btn-warning">Add Cart</button>
	          <button class="btn btn-warning">Buy Now</button>
	          <br>
	          <br>
	        </div>
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/bugatti_PNG17.png"/>"/>
	        </div>
	      </div>
	    </div>
	
	    <br>
	
	    <div id="veyronss" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6" style="padding-top:15px">
	          <img class="img-responsive" src="<spring:url value="/resources/images/bugatti_PNG26.png"/>"/>
	        </div>
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2> Bugatti Veyron 16.4 Super Sport</h2>
	          <h4>
	            <span class="label label-success">4.9<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 200000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#veyronssmodal">More Details</button>
	          <br>
	          <br>
	          <button class="btn btn-warning">Add Cart</button>
	          <button class="btn btn-warning">Buy Now</button>
	          <br>
	          <br>
	          <br>
	        </div>
	      </div>
	    </div>
	    
	    <div id="veyronmodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>GENERAL INFORMATION:</medium></h4>
	              <tr>
	                <th>LENGTH</th>
	                <td>4462 mm</td>
	              </tr>
	              <tr>
	                <th>WIDTH</th>
	                <td>1998 mm</td>
	              </tr>
	              <tr>
	                <th>HEIGHT, STANDARD</th>
	                <td>1204 mm</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE</th>
	                <td>2710 mm</td>
	              </tr>
	              <tr>
	                <th>KERB WEIGTH</th>
	                <td>1888 Kg</td>
	              </tr>
	              <tr>
	                <th>GROSS VEHICLE WEIGHT RATING</th>
	                <td>2200 Kg</td>
	              </tr>
	              <tr>
	                <th>FUEL TANK CAPACITY</th>
	                <td>100 l</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>POWER TRAIN:</medium></h4>
	              <tr>
	                <th>ENGINE TYPE/ NUMBER OF CYLINDERS</th>
	                <td>W16</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT</th>
	                <td>7993 cm3</td>
	              </tr>
	              <tr>
	                <th>PERFORMANCE</th>
	                <td>736 KW (1001 PS) at 6000 rpm</td>
	              </tr>
	              <tr>
	                <th>MAXIMUM TORQUE</th>
	                <td>1250 Nm at 2200-5500 rpm</td>
	              </tr>
	              <tr>
	                <th>BORE</th>
	                <td>86 mm</td>
	              </tr>
	              <tr>
	                <th>STROKE</th>
	                <td>86 mm</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO</th>
	                <td>8.3:1</td>
	              </tr>
	              <tr>
	                <th>GEARBOX</th>
	                <td>7-speed DSG</td>
	              </tr>
	              <tr>
	                <th>DRIVE</th>
	                <td>All-Wheel Drive</td>
	              </tr>
	              <tr>
	                <th>TORQUE DISTRIBUTION, FRONT</th>
	                <td>Front Differentail With Haldex Coupling</td>
	              </tr>
	              <tr>
	                <th rowspan="2">TORQUE DISTRIBUTION, REAR</th>
	                <td>1) Rear Regulated Limited Slip</td>
	              </tr>
	              <tr>
	                <td>2) Differential</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>RUNNING GEAR:</medium></h4>
	              <tr>
	                <th>SUSPENSION</th>
	                  <td>Double Wishbone, Front and Rear</td>
	              </tr>
	              <tr>
	                <th>MAXIMUM WEIGHT PER AXLE</th>
	                <td>990 Kg Front / 1210 Kg Rear</td>
	              </tr>
	              <tr>
	                <th>TYRES ,FRONT</th>
	                <td>265-680 ZR 500A</td>
	              </tr>
	              <tr>
	                <th>TYRES, REAR</th>
	                <td>365-710 ZR 540A</td>
	              </tr>
	              <tr>
	                <th>TYRE PRESSURE</th>
	                <td>3.0 bar Front/Rear</td>
	              </tr>
	              <tr>
	              <th colspan="2">RIDE HEIGHT:</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>125 mm Front / 125 mm Rear</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>80 mm Front / 95 mm Rear</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>65 mm Front / 70 mm Rear</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BRAKES:</medium></h4>
	              <tr>
	                <th>BRAKES DISC DIAMETER</th>
	                <td>400 mm Front / 380 mm Rear</td>
	              </tr>
	              <tr>
	                <th>BRAKES DISC MATERIAL</th>
	                <td>Carbon- Ceramic</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF WHEEL BRAKES CYLINDERS</th>
	                <td>8 Front / 6 Rear (Per Brake Caliper)</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF BRAKES PADS</th>
	                <td>4 Front / 2 Rear (Per Brake Caliper)</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DRIVING PERFORMANCE:</medium></h4>
	              <tr>
	                <th>MAXIMUM SPEED</th>
	                <td>407 Km/h</td>
	              </tr>
	              <tr>
	                <th rowspan="3">ACCELERATION</th>
	                <td>2.5 sec 0-100 Km/h</td>
	              </tr>
	              <tr>
	                <td>7.3 sec 0-200 Km/h</td>
	              </tr>
	              <tr>
	                <td>16.7 sec 0-300 Km/h</td>
	              </tr>
	              <tr>
	                <th>BRAKING DISTANCE</th>
	                <td>31.4 m 100-0 Km/h</td>
	              </tr>
	              <tr>
	                <th>GEARBOX SHIFT SPEED</th>
	                <td><150 ms </td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>FUEL ECONOMY*:</medium></h4>
	              <tr>
	                <th>URBAN</th>
	                <td>41.9 l</td>
	              </tr>
	              <tr>
	                <th>EXTRA URBAN</th>
	                <td>15.6 l</td>
	              </tr>
	              <tr>
	                <th>COMBINED</th>
	                <td>24.9 l</td>
	              </tr>
	              <tr>
	                <th colspan="2">CO2 EMISSION</th>
	              </tr>
	              <tr>
	                <th>URBAN</th>
	                <td>999 g/Km</td>
	              </tr>
	              <tr>
	                <th>EXTRA URBAN</th>
	                <td>373 g/Km</td>
	              </tr>
	              <tr>
	                <th>COMBINED</th>
	                <td>596 g/Km</td>
	              </tr>
	              <tr>
	                <th>FUEL TYPE</th>
	                <td>Super Unleaded 98 RON/ROZ</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>MAXIMUM RATE OF GEAR AT 6500 RPM:</medium></h4>
	              <tr>
	                <th>1st</th>
	                <td>100 Km/h</td>
	              </tr>
	              <tr>
	                <th>2nd</th>
	                <td>140 Km/h</td>
	              </tr>
	              <tr>
	                <th>3rd</th>
	                <td>191 Km/h</td>
	              </tr>
	              <tr>
	                <th>4th</th>
	                <td>246 Km/h</td>
	              </tr>
	              <tr>
	                <th>5th</th>
	                <td>301 Km/h</td>
	              </tr>
	              <tr>
	                <th>6th</th>
	                <td>362 Km/h</td>
	              </tr>
	              <tr>
	                <th>7th</th>
	                <td>407 Km/h</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>AERODYNAMICS:</medium></h4>
	              <tr>
	                <th colspan="2">Cd VALUE</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>0.393</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>0.417</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>0.355</td>
	              </tr>
	              <tr>
	                <th>AIRBRAKE</th>
	                <td>0.682</td>
	              </tr>
	              <tr>
	                <th colspan="2">WING / SPOLIER ANGLE</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>Retracted/ 6 degree Cool-down</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>15 degree</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>2 degree</td>
	              </tr>
	              <tr>
	                <th>BRAKE ANGLE</th>
	                <td>55 degree</td>
	              </tr>
	              <tr>
	                <th>SPECIAL FEATURES</th>
	                <td>Central Hydraulics</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>THREE RIDE HEIGHTS:</medium></h4>
	              <tr>
	                <th>STANDARD</th>
	                <td> In urban traffic and at speeds up to 220 Km/h. At 220 Km/h and above, configuration changes automatically to handling (Front diffuser flaps open)</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>May be Manually Activated for fast driving on rural roads, motorway or race tracks (Front diffuser flaps open)</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>May be manually activated with separate key for driving at top speed (above 375 Km/h)(Front diffuser flaps closed)</td>
	              </tr>
	            </table>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <div id="veyrongsmodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>GENERAL INFORMATION:</medium></h4>
	              <tr>
	                <th>LENGTH</th>
	                <td>4462 mm</td>
	              </tr>
	              <tr>
	                <th>WIDTH</th>
	                <td>1998 mm</td>
	              </tr>
	              <tr>
	                <th>HEIGHT, STANDARD</th>
	                <td>1204 mm</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE</th>
	                <td>2710 mm</td>
	              </tr>
	              <tr>
	                <th>KERB WEIGTH</th>
	                <td>1990 Kg</td>
	              </tr>
	              <tr>
	                <th>GROSS VEHICLE WEIGHT RATING</th>
	                <td>2240 Kg</td>
	              </tr>
	              <tr>
	                <th>FUEL TANK CAPACITY</th>
	                <td>100 l</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>POWER TRAIN:</medium></h4>
	              <tr>
	                <th>ENGINE TYPE/ NUMBER OF CYLINDERS</th>
	                <td>W16</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT</th>
	                <td>7993 cm3</td>
	              </tr>
	              <tr>
	                <th>PERFORMANCE</th>
	                <td>736 KW (1001 PS) at 6000 rpm</td>
	              </tr>
	              <tr>
	                <th>MAXIMUM TORQUE</th>
	                <td>1250 Nm at 2200-5500 rpm</td>
	              </tr>
	              <tr>
	                <th>BORE</th>
	                <td>86 mm</td>
	              </tr>
	              <tr>
	                <th>STROKE</th>
	                <td>86 mm</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO</th>
	                <td>8.3:1</td>
	              </tr>
	              <tr>
	                <th>GEARBOX</th>
	                <td>7-speed DSG</td>
	              </tr>
	              <tr>
	                <th>DRIVE</th>
	                <td>All-Wheel Drive</td>
	              </tr>
	              <tr>
	                <th>TORQUE DISTRIBUTION, FRONT</th>
	                <td>Front Differentail With Haldex Coupling</td>
	              </tr>
	              <tr>
	                <th rowspan="2">TORQUE DISTRIBUTION, REAR</th>
	                <td>1) Rear Regulated Limited Slip</td>
	              </tr>
	              <tr>
	                <td>2) Differential</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>RUNNING GEAR:</medium></h4>
	              <tr>
	                <th>SUSPENSION</th>
	                  <td>Double Wishbone, Front and Rear</td>
	              </tr>
	              <tr>
	                <th>MAXIMUM WEIGHT PER AXLE</th>
	                <td>1010 Kg Front / 1230 Kg Rear</td>
	              </tr>
	              <tr>
	                <th>TYRES ,FRONT</th>
	                <td>265-680 ZR 500A</td>
	              </tr>
	              <tr>
	                <th>TYRES, REAR</th>
	                <td>365-710 ZR 540A</td>
	              </tr>
	              <tr>
	                <th>TYRE PRESSURE</th>
	                <td>3.0 bar Front/Rear</td>
	              </tr>
	              <tr>
	              <th colspan="2">RIDE HEIGHT:</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>123 mm Front / 123 mm Rear</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>80 mm Front / 95 mm Rear</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>65 mm Front / 70 mm Rear</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BRAKES:</medium></h4>
	              <tr>
	                <th>BRAKES DISC DIAMETER</th>
	                <td>400 mm Front / 380 mm Rear</td>
	              </tr>
	              <tr>
	                <th>BRAKES DISC MATERIAL</th>
	                <td>Carbon- Ceramic</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF WHEEL BRAKES CYLINDERS</th>
	                <td>8 Front / 6 Rear (Per Brake Caliper)</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF BRAKES PADS</th>
	                <td>4 Front / 2 Rear (Per Brake Caliper)</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DRIVING PERFORMANCE:</medium></h4>
	              <tr>
	                <th>MAXIMUM SPEED</th>
	                <td>407 Km/h</td>
	              </tr>
	              <tr>
	                <th rowspan="3">ACCELERATION</th>
	                <td> > 2.7 sec 0-100 Km/h</td>
	              </tr>
	              <tr>
	                <td>7.3 sec 0-200 Km/h</td>
	              </tr>
	              <tr>
	                <td>16.7 sec 0-300 Km/h</td>
	              </tr>
	              <tr>
	                <th>BRAKING DISTANCE</th>
	                <td>31.4 m 100-0 Km/h</td>
	              </tr>
	              <tr>
	                <th>GEARBOX SHIFT SPEED</th>
	                <td> < 150 ms </td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>FUEL ECONOMY*:</medium></h4>
	              <tr>
	                <th>URBAN</th>
	                <td>41.9 l</td>
	              </tr>
	              <tr>
	                <th>EXTRA URBAN</th>
	                <td>15.6 l</td>
	              </tr>
	              <tr>
	                <th>COMBINED</th>
	                <td>24.9 l</td>
	              </tr>
	              <tr>
	                <th colspan="2">CO2 EMISSION</th>
	              </tr>
	              <tr>
	                <th>URBAN</th>
	                <td>999 g/Km</td>
	              </tr>
	              <tr>
	                <th>EXTRA URBAN</th>
	                <td>373 g/Km</td>
	              </tr>
	              <tr>
	                <th>COMBINED</th>
	                <td>596 g/Km</td>
	              </tr>
	              <tr>
	                <th>FUEL TYPE</th>
	                <td>Super Unleaded 98 RON/ROZ</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>MAXIMUM RATE OF GEAR AT 6500 RPM:</medium></h4>
	              <tr>
	                <th>1st</th>
	                <td>100 Km/h</td>
	              </tr>
	              <tr>
	                <th>2nd</th>
	                <td>140 Km/h</td>
	              </tr>
	              <tr>
	                <th>3rd</th>
	                <td>191 Km/h</td>
	              </tr>
	              <tr>
	                <th>4th</th>
	                <td>246 Km/h</td>
	              </tr>
	              <tr>
	                <th>5th</th>
	                <td>301 Km/h</td>
	              </tr>
	              <tr>
	                <th>6th</th>
	                <td>362 Km/h</td>
	              </tr>
	              <tr>
	                <th>7th</th>
	                <td>407 Km/h</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>AERODYNAMICS:</medium></h4>
	              <tr>
	                <th colspan="2">Cd VALUE</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>0.39</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>0.42</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>0.36</td>
	              </tr>
	              <tr>
	                <th>AIRBRAKE</th>
	                <td>0.68</td>
	              </tr>
	              <tr>
	                <th colspan="2">WING / SPOLIER ANGLE</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>Retracted/ 6 degree Cool-down</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>15 degree / 20 degree</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>2 degree</td>
	              </tr>
	              <tr>
	                <th>BRAKE ANGLE</th>
	                <td>55 degree</td>
	              </tr>
	              <tr>
	                <th>SPECIAL FEATURES</th>
	                <td>Central Hydraulics</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>THREE RIDE HEIGHTS:</medium></h4>
	              <tr>
	                <th>STANDARD</th>
	                <td> In urban traffic and at speeds up to 220 Km/h. At 220 Km/h and above, configuration changes automatically to handling (Front diffuser flaps open)</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>May be Manually Activated for fast driving on rural roads, motorway or race tracks (Front diffuser flaps open)</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>May be manually activated with separate key for driving at top speed (above 375 Km/h)(Front diffuser flaps closed)</td>
	              </tr>
	            </table>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	
	    <div id="veyrongsvmodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>GENERAL INFORMATION:</medium></h4>
	              <tr>
	                <th>LENGTH</th>
	                <td>4462 mm</td>
	              </tr>
	              <tr>
	                <th>WIDTH</th>
	                <td>1998 mm</td>
	              </tr>
	              <tr>
	                <th>HEIGHT, STANDARD</th>
	                <td>1190 mm</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE</th>
	                <td>2710 mm</td>
	              </tr>
	              <tr>
	                <th>KERB WEIGTH</th>
	                <td>1990 Kg</td>
	              </tr>
	              <tr>
	                <th>GROSS VEHICLE WEIGHT RATING</th>
	                <td>2240 Kg</td>
	              </tr>
	              <tr>
	                <th>FUEL TANK CAPACITY</th>
	                <td>100 l</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>POWER TRAIN:</medium></h4>
	              <tr>
	                <th>ENGINE TYPE/ NUMBER OF CYLINDERS</th>
	                <td>W16</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT</th>
	                <td>7993 cm3</td>
	              </tr>
	              <tr>
	                <th>PERFORMANCE</th>
	                <td>882 KW (1200 PS) at 6400 rpm</td>
	              </tr>
	              <tr>
	                <th>MAXIMUM TORQUE</th>
	                <td>1500 Nm at 3000-5000 rpm</td>
	              </tr>
	              <tr>
	                <th>BORE</th>
	                <td>86 mm</td>
	              </tr>
	              <tr>
	                <th>STROKE</th>
	                <td>86 mm</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO</th>
	                <td>8.3:1</td>
	              </tr>
	              <tr>
	                <th>GEARBOX</th>
	                <td>7-speed DSG</td>
	              </tr>
	              <tr>
	                <th>DRIVE</th>
	                <td>All-Wheel Drive</td>
	              </tr>
	              <tr>
	                <th>TORQUE DISTRIBUTION, FRONT</th>
	                <td>Front Differentail With Haldex Coupling</td>
	              </tr>
	              <tr>
	                <th rowspan="2">TORQUE DISTRIBUTION, REAR</th>
	                <td>1) Rear Regulated Limited Slip</td>
	              </tr>
	              <tr>
	                <td>2) Differential</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>RUNNING GEAR:</medium></h4>
	              <tr>
	                <th>SUSPENSION</th>
	                  <td>Double Wishbone, Front and Rear</td>
	              </tr>
	              <tr>
	                <th>MAXIMUM WEIGHT PER AXLE</th>
	                <td>1010 Kg Front / 1230 Kg Rear</td>
	              </tr>
	              <tr>
	                <th>TYRES ,FRONT</th>
	                <td>265-680 ZR 500A</td>
	              </tr>
	              <tr>
	                <th>TYRES, REAR</th>
	                <td>365-710 ZR 540A</td>
	              </tr>
	              <tr>
	                <th>TYRE PRESSURE</th>
	                <td>3.0 bar Front/Rear</td>
	              </tr>
	              <tr>
	              <th colspan="2">RIDE HEIGHT:</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>115 mm Front / 115 mm Rear</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>90 mm Front / 102 mm Rear</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>65 mm Front / 70 mm Rear</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BRAKES:</medium></h4>
	              <tr>
	                <th>BRAKES DISC DIAMETER</th>
	                <td>400 mm Front / 380 mm Rear</td>
	              </tr>
	              <tr>
	                <th>BRAKES DISC MATERIAL</th>
	                <td>Carbon- Ceramic</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF WHEEL BRAKES CYLINDERS</th>
	                <td>8 Front / 6 Rear (Per Brake Caliper)</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF BRAKES PADS</th>
	                <td>4 Front / 2 Rear (Per Brake Caliper)</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DRIVING PERFORMANCE:</medium></h4>
	              <tr>
	                <th>MAXIMUM SPEED</th>
	                <td>410 Km/h</td>
	              </tr>
	              <tr>
	                <th rowspan="5">ACCELERATION</th>
	                <td>2.6 sec 0-100 Km/h</td>
	              </tr>
	              <tr>
	                <td>7.1 sec 0-200 Km/h</td>
	              </tr>
	              <tr>
	                <td>16.0 sec 0-300 Km/h</td>
	              </tr>
	              <tr>
	                <td>10.0 sec 1/4 mile (0.40 Km)</td>
	              </tr>
	              <tr>
	                <td>16.0 sec 1 mile (1.60 Km)</td>
	              </tr>
	              <tr>
	                <th>LATERAL ACCELERATION</th>
	                <td>1.4 g</td>
	              </tr>
	              <tr>
	                <th>BRAKING DISTANCE</th>
	                <td>31.4 m 100-0 Km/h</td>
	              </tr>
	              <tr>
	                <th rowspan="5">ACCELERATING AND BRAKING</th>
	                <td>5.9 sec 0-100-0 Km/h</td>
	              </tr>
	              <tr>
	                <td>12.9 sec 0-200-0 Km/h</td>
	              </tr>
	              <tr>
	                <td>23.9 sec 0-300-0 Km/h</td>
	              </tr>
	              <tr>
	                <td>9.5 sec 0-100-0 Km/h</td>
	              </tr>
	              <tr>
	                <td>27.1 sec 0-200-0 Km/h</td>
	              </tr>
	              <tr>
	                <th>GEARBOX SHIFT SPEED</th>
	                <td>100 ms</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>FUEL ECONOMY*:</medium></h4>
	              <tr>
	                <th>URBAN</th>
	                <td>37.2 l</td>
	              </tr>
	              <tr>
	                <th>EXTRA URBAN</th>
	                <td>14.9 l</td>
	              </tr>
	              <tr>
	                <th>COMBINED</th>
	                <td>23.1 l</td>
	              </tr>
	              <tr>
	                <th colspan="2">CO2 EMISSION</th>
	              </tr>
	              <tr>
	                <th>URBAN</th>
	                <td>867 g/Km</td>
	              </tr>
	              <tr>
	                <th>EXTRA URBAN</th>
	                <td>348 g/Km</td>
	              </tr>
	              <tr>
	                <th>COMBINED</th>
	                <td>539 g/Km</td>
	              </tr>
	              <tr>
	                <th>FUEL TYPE</th>
	                <td>Super Unleaded 98 RON/ROZ</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>MAXIMUM RATE OF GEAR AT 6500 RPM:</medium></h4>
	              <tr>
	                <th>1st</th>
	                <td>104 Km/h</td>
	              </tr>
	              <tr>
	                <th>2nd</th>
	                <td>148 Km/h</td>
	              </tr>
	              <tr>
	                <th>3rd</th>
	                <td>197 Km/h</td>
	              </tr>
	              <tr>
	                <th>4th</th>
	                <td>257 Km/h</td>
	              </tr>
	              <tr>
	                <th>5th</th>
	                <td>313 Km/h</td>
	              </tr>
	              <tr>
	                <th>6th</th>
	                <td>377 Km/h</td>
	              </tr>
	              <tr>
	                <th>7th</th>
	                <td>410 Km/h</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>AERODYNAMICS:</medium></h4>
	              <tr>
	                <th colspan="2">Cd VALUE</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>0.39</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>0.42</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>0.36</td>
	              </tr>
	              <tr>
	                <th>AIRBRAKE</th>
	                <td>0.69</td>
	              </tr>
	              <tr>
	                <th colspan="2">WING / SPOLIER ANGLE</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>Retracted/ 6 degree Cool-down</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>16 degree / 21 degree</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>3 degree</td>
	              </tr>
	              <tr>
	                <th>BRAKE ANGLE</th>
	                <td>55 degree</td>
	              </tr>
	              <tr>
	                <th>SPECIAL FEATURES</th>
	                <td>Central Hydraulics / Double Diffuser</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>THREE RIDE HEIGHTS:</medium></h4>
	              <tr>
	                <th>STANDARD</th>
	                <td> In urban traffic and at speeds up to 180 Km/h. At 180 Km/h and above, configuration changes automatically to handling (Front diffuser flaps open)</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>May be Manually Activated for fast driving on rural roads, motorway or race tracks (Front diffuser flaps open)</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>May be manually activated with separate key for driving at top speed (above 375 Km/h)(Front diffuser flaps closed)</td>
	              </tr>
	            </table>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	
	    <div id="veyronssmodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>GENERAL INFORMATION:</medium></h4>
	              <tr>
	                <th>LENGTH</th>
	                <td>4462 mm</td>
	              </tr>
	              <tr>
	                <th>WIDTH</th>
	                <td>1998 mm</td>
	              </tr>
	              <tr>
	                <th>HEIGHT, STANDARD</th>
	                <td>1190 mm</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE</th>
	                <td>2710 mm</td>
	              </tr>
	              <tr>
	                <th>KERB WEIGTH</th>
	                <td>1838 Kg</td>
	              </tr>
	              <tr>
	                <th>GROSS VEHICLE WEIGHT RATING</th>
	                <td>2200 Kg</td>
	              </tr>
	              <tr>
	                <th>FUEL TANK CAPACITY</th>
	                <td>100 l</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>POWER TRAIN:</medium></h4>
	              <tr>
	                <th>ENGINE TYPE/ NUMBER OF CYLINDERS</th>
	                <td>W16</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT</th>
	                <td>7993 cm3</td>
	              </tr>
	              <tr>
	                <th>PERFORMANCE</th>
	                <td>882 KW (1200 PS) at 6400 rpm</td>
	              </tr>
	              <tr>
	                <th>MAXIMUM TORQUE</th>
	                <td>1500 Nm at 3000-5000 rpm</td>
	              </tr>
	              <tr>
	                <th>BORE</th>
	                <td>86 mm</td>
	              </tr>
	              <tr>
	                <th>STROKE</th>
	                <td>86 mm</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO</th>
	                <td>8.3:1</td>
	              </tr>
	              <tr>
	                <th>GEARBOX</th>
	                <td>7-speed DSG</td>
	              </tr>
	              <tr>
	                <th>DRIVE</th>
	                <td>All-Wheel Drive</td>
	              </tr>
	              <tr>
	                <th>TORQUE DISTRIBUTION, FRONT</th>
	                <td>Front Differentail With Haldex Coupling</td>
	              </tr>
	              <tr>
	                <th rowspan="2">TORQUE DISTRIBUTION, REAR</th>
	                <td>1) Rear Regulated Limited Slip</td>
	              </tr>
	              <tr>
	                <td>2) Differential</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>RUNNING GEAR:</medium></h4>
	              <tr>
	                <th>SUSPENSION</th>
	                  <td>Double Wishbone, Front and Rear</td>
	              </tr>
	              <tr>
	                <th>MAXIMUM WEIGHT PER AXLE</th>
	                <td>990 Kg Front / 1210 Kg Rear</td>
	              </tr>
	              <tr>
	                <th>TYRES ,FRONT</th>
	                <td>265-680 ZR 500A</td>
	              </tr>
	              <tr>
	                <th>TYRES, REAR</th>
	                <td>365-710 ZR 540A</td>
	              </tr>
	              <tr>
	                <th>TYRE PRESSURE</th>
	                <td>3.0 bar Front/Rear</td>
	              </tr>
	              <tr>
	              <th colspan="2">RIDE HEIGHT:</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>115 mm Front / 115 mm Rear</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>80 mm Front / 95 mm Rear</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>65 mm Front / 70 mm Rear</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>BRAKES:</medium></h4>
	              <tr>
	                <th>BRAKES DISC DIAMETER</th>
	                <td>400 mm Front / 380 mm Rear</td>
	              </tr>
	              <tr>
	                <th>BRAKES DISC MATERIAL</th>
	                <td>Carbon- Ceramic</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF WHEEL BRAKES CYLINDERS</th>
	                <td>8 Front / 6 Rear (Per Brake Caliper)</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF BRAKES PADS</th>
	                <td>4 Front / 2 Rear (Per Brake Caliper)</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DRIVING PERFORMANCE:</medium></h4>
	              <tr>
	                <th>MAXIMUM SPEED</th>
	                <td>415 Km/h</td>
	              </tr>
	              <tr>
	                <th rowspan="5">ACCELERATION</th>
	                <td>2.5 sec 0-100 Km/h</td>
	              </tr>
	              <tr>
	                <td>6.7 sec 0-200 Km/h</td>
	              </tr>
	              <tr>
	                <td>14.6 sec 0-300 Km/h</td>
	              </tr>
	              <tr>
	                <td>9.7 sec 1/4 mile (0.40 Km)</td>
	              </tr>
	              <tr>
	                <td>23.6 sec 1 mile (1.60 Km)</td>
	              </tr>
	              <tr>
	                <th>LATERAL ACCELERATION</th>
	                <td>1.4 g</td>
	              </tr>
	              <tr>
	                <th>BRAKING DISTANCE</th>
	                <td>31.4 m 100-0 Km/h</td>
	              </tr>
	              <tr>
	                <th rowspan="5">ACCELERATING AND BRAKING</th>
	                <td>5.9 sec 0-100-0 Km/h</td>
	              </tr>
	              <tr>
	                <td>12.5 sec 0-200-0 Km/h</td>
	              </tr>
	              <tr>
	                <td>22.5 sec 0-300-0 Km/h</td>
	              </tr>
	              <tr>
	                <td>9.2 sec 0-200-0 Km/h</td>
	              </tr>
	              <tr>
	                <td>25.6 sec 0-200-0 Km/h</td>
	              </tr>
	              <tr>
	                <th>GEARBOX SHIFT SPEED</th>
	                <td>100 ms </td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>FUEL ECONOMY*:</medium></h4>
	              <tr>
	                <th>URBAN</th>
	                <td>37.2 l</td>
	              </tr>
	              <tr>
	                <th>EXTRA URBAN</th>
	                <td>14.9l</td>
	              </tr>
	              <tr>
	                <th>COMBINED</th>
	                <td>23.1 l</td>
	              </tr>
	              <tr>
	                <th colspan="2">CO2 EMISSION</th>
	              </tr>
	              <tr>
	                <th>URBAN</th>
	                <td>867 g/Km</td>
	              </tr>
	              <tr>
	                <th>EXTRA URBAN</th>
	                <td>348 g/Km</td>
	              </tr>
	              <tr>
	                <th>COMBINED</th>
	                <td>539 g/Km</td>
	              </tr>
	              <tr>
	                <th>FUEL TYPE</th>
	                <td>Super Unleaded 98 RON/ROZ</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>MAXIMUM RATE OF GEAR AT 6500 RPM:</medium></h4>
	              <tr>
	                <th>1st</th>
	                <td>104 Km/h</td>
	              </tr>
	              <tr>
	                <th>2nd</th>
	                <td>148 Km/h</td>
	              </tr>
	              <tr>
	                <th>3rd</th>
	                <td>197 Km/h</td>
	              </tr>
	              <tr>
	                <th>4th</th>
	                <td>257 Km/h</td>
	              </tr>
	              <tr>
	                <th>5th</th>
	                <td>313 Km/h</td>
	              </tr>
	              <tr>
	                <th>6th</th>
	                <td>377 Km/h</td>
	              </tr>
	              <tr>
	                <th>7th</th>
	                <td>415 Km/h</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>AERODYNAMICS:</medium></h4>
	              <tr>
	                <th colspan="2">Cd VALUE</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>0.388</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>0.417</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>0.348</td>
	              </tr>
	              <tr>
	                <th>AIRBRAKE</th>
	                <td>0.695</td>
	              </tr>
	              <tr>
	                <th colspan="2">WING / SPOLIER ANGLE</th>
	              </tr>
	              <tr>
	                <th>STANDARD</th>
	                <td>Retracted/ 6 degree Cool-down</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>18 degree</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>3 degree</td>
	              </tr>
	              <tr>
	                <th>BRAKE ANGLE</th>
	                <td>55 degree</td>
	              </tr>
	              <tr>
	                <th>SPECIAL FEATURES</th>
	                <td>Central Hydraulics / Double Diffuser</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>THREE RIDE HEIGHTS:</medium></h4>
	              <tr>
	                <th>STANDARD</th>
	                <td> In urban traffic and at speeds up to 180 Km/h. At 180 Km/h and above, configuration changes automatically to handling (Front diffuser flaps open)</td>
	              </tr>
	              <tr>
	                <th>HANDLING</th>
	                <td>May be Manually Activated for fast driving on rural roads, motorway or race tracks (Front diffuser flaps open)</td>
	              </tr>
	              <tr>
	                <th>TOP SPEED</th>
	                <td>May be manually activated with separate key for driving at top speed (above 375 Km/h)(Front diffuser flaps closed)</td>
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