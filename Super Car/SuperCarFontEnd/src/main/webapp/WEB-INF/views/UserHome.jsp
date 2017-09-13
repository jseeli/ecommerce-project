<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>User Home</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
	</head>

  <body>
	
	<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
    
<!--=============================================== Carousel with 3 images ===========================================-->
	<div class="container container-center"> 
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!--======= Indicators =========-->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			
			<!--======== Wrapper for slide ===========-->
			<div class="carousel-inner">
				<div class="item active">
					<img class="img-rounded img-responsive" src="<spring:url value="/resources/images/Agera.jpg"/>" alt="Agera" style="width:100%">
				</div>
			
				<div class="item">
					<img class="img-rounded img-responsive" src="<spring:url value="/resources/images/mercedes-benz-amg.jpg"/>" alt="Mercedes-Benz" style="width:100%">
				</div>
				
				<div class="item">
					<img class="img-rounded img-responsive" src="<spring:url value="/resources/images/ford-gt.jpg"/>" alt="Ford-GT" style="width:100%">
				</div>
			</div>
	
			<!--========== left and right control =========-->
			<a class="carousel-control left" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
				<span class="sr-only">Previous</span>
			</a>
			
			<a class="carousel-control right" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
				<span class="sr-only">Next</span>
			</a>
		</div>
	</div>
	<br>

    <!--=============================================== Information =====================================================-->
    <section id="info">
    	<h1 class="text-center">Information</h1>
    	<br>
		<div class="container-fluid">
			<div class="row">
				<div id="info1" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/BUG_veyron_12.jpg"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Bugatti Veyron 16.4</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#veyronmodal">More Details</button>
					</div>
				</div>	
				<div id="info2" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/bugatti_PNG26.png"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Bugatti Veyron 16.4 Grand Sport</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#veyrongsmodal">More Details</button>
					</div>
				</div>
				<div id="info3" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/Bugatti-Veyron-16.4-Grand-Sport-Vitesse.png"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Bugatti Veyron 16.4 Grand Sport Vitesse</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#veyrongsvmodal">More Details</button>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div id="info4" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/bugatti_PNG17.png"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Bugatti Veyron 16.4 Super Sport</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#veyronssmodal">More Details</button>
					</div>
				</div>	
				<div id="info5" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/pagani2.jpg"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Pagani Huayra</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#huayramodal">More Details</button>
					</div>
				</div>
				<div id="info6" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/lamborghini-huracan.jpg"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">lamborghini Huracan</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#huracanmodal">More Details</button>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div id="info7" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/Lamborghini-Aventador.png"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">lamborghini Aventador</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#aventadormodal">More Details</button>
					</div>
				</div>	
				<div id="info8" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/Lamboghini Veneno.jpg"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">lamborghini Veneno</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#venenomodal">More Details</button>
					</div>
				</div>
				<div id="info9" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/mercedes-AMG-GT.png"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Mercedes-AMG GT</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#mercedesgtmodal">More Details</button>
					</div>
				</div>
			</div>
			
			<div class="row">
				<div id="info10" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/Mercedes-AMG-GT-S.png"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Mercedes-AMG GT S</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#mercedesgtsmodal">More Details</button>
					</div>
				</div>	
				<div id="info11" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/Mercedes-AMG-GT-C-50.png"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Mercedes-AMG GT C Edition 50</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#mercedesgtcmodal">More Details</button>
					</div>
				</div>
				<div id="info12" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/AMG-GT-ROADSTER.png"/>" class="img-rounded img-responsive" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Mercedes-AMG GT R</h4>
						</div>
						<button class="btn btn-info" data-toggle="modal" data-target="#mercedesgtrmodal">More Details</button>
					</div>
				</div>
			</div>
		</div>
    </section>

    <br>
    <br>

    <!--================================================ Footer ================================================-->
	<section id="copyright">
		<footer class= "padding-64 center opacity black xlarge">
			<p class="text ">Copyright &copy; 2017  Super car Ltd</p>
		</footer>
	</section>

	<!--===================================================== Modals ==========================================================================-->
	
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
	    
	    <div id="mercedesgtmodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification:</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>PERFORMANCE:</medium></h4>
	              <tr>
	                <th>TOP SPEED:</th>
	                <td>304 km/h</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ACCELERATION:</medium></h4>
	              <tr>
	                <th>ACCELERATION 0‑100 KM/H:</th>
	                <td>4.0 s</td>
	              <tr>
	              <tr>
	                <th>FUEL TYPE:</th>
	                <td>Super Plus</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION, URBAN:</th>
	                <td>12.5 - 12.2 l/100 km</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION, EXTRA-URBAN:</th>
	                <td>7.9 - 7.6 l/100 km</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION COMBINED:</th>
	                <td>9.6-9.3 l/100 km</td>
	              <tr>
	              <tr>
	                <th>CO2 EMISSIONS COMBINED:</th>
	                <td>224-216 g/km</td>
	              <tr>
	              <tr>
	                <th>EFFICIENCY CLASS:</th>
	                <td>G</td>
	              <tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ENGINE SPECIFICATIONS:</medium></h4>
	              <tr>
	                <th>NUMBER OF CYLINDERS/ARRANGEMENT:</th>
	                <td>8 Cylinder - V - Engine</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF VALVES PER CYLINDER:</th>
	                <td>4</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT(BORE x STROKE):</th>
	                <td>3982 cm3 (83.0 mm x 92.0 mm)</td>
	              </tr>
	              <tr>
	                <th>RATED OUTPUT:</th>
	                <td>350 kW (476 hp) at 6000 rpm</td>
	              </tr>
	              <tr>
	                <th>RATED TORQUE:</th>
	                <td>630 Nm at 1700 - 5000 rpm</td>
	              </tr>
	              <tr>
	                <th>GOVERNED ENGINE SPEED(MAXIMUM RPM):</th>
	                <td>7000 rpm</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO:</th>
	                <td>10.5 : 1</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DRIVE TRAIN:</medium></h4>
	              <tr>
	                <th>DRIVE TYPE:</th>
	                <td>Rear-wheel drive</td>
	              </tr>
	              <tr>
	                <th>OPERATION:</th>
	                <td>Electrohydraulic</td>
	              </tr>
	              <tr>
	                <th>TRANSMISSION:</th>
	                <td>7G-DCT automatic transmission</td>
	              </tr>
	              <tr>
	                <th>1st GEAR:</th>
	                <td>3.40</td>
	              </tr>
	              <tr>
	                <th>2nd GEAR:</th>
	                <td>2.19</td>
	              </tr>
	              <tr>
	                <th>3rd GEAR:</th>
	                <td>1.63</td>
	              </tr>
	              <tr>
	                <th>4th GEAR:</th>
	                <td>1.29</td>
	              </tr>
	              <tr>
	                <th>5th GEAR:</th>
	                <td>1.03</td>
	              </tr>
	              <tr>
	                <th>6th GEAR:</th>
	                <td>0.84</td>
	              </tr>
	              <tr>
	                <th>7th GEAR:</th>
	                <td>0.63</td>
	              </tr>
	              <tr>
	                <th>1st REVERSE GEAR:</th>
	                <td>2.79</td>
	              </tr>
	              <tr>
	                <th>FINAL-DRIVE RATIO:</th>
	                <td>3.67</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>SUSPENSION:</medium></h4>
	              <tr>
	                <th>STEERING:</th>
	                <td>Speed-dependent, hydraulic</td>
	              </tr>
	              <tr>
	                <th>STEERING GEAR TYPE:</th>
	                <td>Rack and pinion</td>
	              </tr>
	              <tr>
	                <th>FRONT WHEEL OR AXLE LOCATION:</th>
	                <td>Independent Suspension</td>
	              </tr>
	              <tr>
	                <th>REAR WHEEL OR AXLE LOCATION:</th>
	                <td>Independent Suspension</td>
	              </tr>
	              <tr>
	                <th>FRONT/REAR SPRINGS:</th>
	                <td>Coil spring, Single-tube gas-pressure DSSV/Coil spring, Single-tube gas-pressure DSSV</td>
	              </tr>
	              <tr>
	                <th>FRONT/REAR STABILIZER TYPE:</th>
	                <td>Tubular torsion bar / Torsion bar</td>
	              </tr>
	              <tr>
	                <th>BRAKES:</th>
	                <td>Discs, internally ventilated and perforated</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WHEELS:</medium></h4>
	              <tr>
	                <th>FRONT:</th>
	                <td>9.0 J x 19</td>
	              </tr>
	              <tr>
	                <th>REAR:</th>
	                <td>11.0 J x 19</td>
	              </tr>
	              <tr>
	                <th>FRONT WHEEL OFFSET:</th>
	                <td>58 mm</td>
	              </tr>
	              <tr>
	                <th>REAR WHEEL OFFSET:</th>
	                <td>68 mm</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>TRIES:</medium></h4>
	              <tr>
	                <th>FRONT:</th>
	                <td>255/35 ZR 19 (96 Y) XL</td>
	              </tr>
	              <tr>
	                <th>REAR:</th>
	                <td>295/35 ZR 19 (104 Y) XL</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DIMENSIONS:</medium></h4>
	              <tr>
	                <th>VEHICLE LENGTH:</th>
	                <td>4544 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE HEIGHT w. TAIGATE OPEN:</th>
	                <td>1985 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE HEIGHT WHEN READY TO DRIVE:</th>
	                <td>1287 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH:</th>
	                <td>1939 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH FRONT DOOR OPEN:</th>
	                <td>2982 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH INCL. BOTH MIRRORS:</th>
	                <td>2075 mm</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE:</th>
	                <td>2630 mm</td>
	              </tr>
	              <tr>
	                <th>TURNING CIRCLE:</th>
	                <td>11.50 m</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WEIGHTS:</medium></h4>
	              <tr>
	                <th>KERB WEIGHT(EU):</th>
	                <td>1615 kg</td>
	              </tr>
	              <tr>
	                <th>PERM. GROSS VEHICLE WEIGHT:</th>
	                <td>1890 kg</td>
	              </tr>
	              <tr>
	                <th>PAYLOAD(EU):</th>
	                <td>275 kg</td>
	              </tr>
	              <tr>
	                <th>FRONT AXLE LOAD AT KERB WEIGHT(EU):</th>
	                <td>750 kg</td>
	              </tr>
	              <tr>
	                <th>REAR AXLE LOAD AT KERB WEIGHT(EU):</th>
	                <td>865 kg</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>CAPACITIES:</medium></h4>
	              <tr>
	                <th>FUEL TANK CAPACITY:</th>
	                <td>65 l</td>
	              </tr>
	              <tr>
	                <th>OF WHICH RESERVE:</th>
	                <td>10 l</td>
	              </tr>
	            </table>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	
	    <div id="mercedesgtsmodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification:</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>PERFORMANCE:</medium></h4>
	              <tr>
	                <th>TOP SPEED:</th>
	                <td>310 km/h</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ACCELERATION:</medium></h4>
	              <tr>
	                <th>ACCELERATION 0‑100 KM/H:</th>
	                <td>3.8 s</td>
	              <tr>
	              <tr>
	                <th>FUEL TYPE:</th>
	                <td>Super Plus</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION, URBAN:</th>
	                <td>12.5 - 12.2 l/100 km</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION, EXTRA-URBAN:</th>
	                <td>7.9 - 7.8 l/100 km</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION COMBINED:</th>
	                <td>9.6-9.4 l/100 km</td>
	              <tr>
	              <tr>
	                <th>CO2 EMISSIONS COMBINED:</th>
	                <td>224-219 g/km</td>
	              <tr>
	              <tr>
	                <th>EFFICIENCY CLASS:</th>
	                <td>G</td>
	              <tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ENGINE SPECIFICATIONS:</medium></h4>
	              <tr>
	                <th>NUMBER OF CYLINDERS/ARRANGEMENT:</th>
	                <td>8 Cylinder - V - Engine</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF VALVES PER CYLINDER:</th>
	                <td>4</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT(BORE x STROKE):</th>
	                <td>3982 cm3 (83.0 mm x 92.0 mm)</td>
	              </tr>
	              <tr>
	                <th>RATED OUTPUT:</th>
	                <td>350 kW (522 hp) at 6250 rpm</td>
	              </tr>
	              <tr>
	                <th>RATED TORQUE:</th>
	                <td>670 Nm at 1800 - 5000 rpm</td>
	              </tr>
	              <tr>
	                <th>GOVERNED ENGINE SPEED(MAXIMUM RPM):</th>
	                <td>7000 rpm</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO:</th>
	                <td>10.5 : 1</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>MIXTURE FORMATION:</medium></h4>
	              <tr>
	                <th>FUEL PREPARATION:</th>
	                <td>Petrol injection</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>EXHAUST:</medium></h4>
	              <tr>
	                <th>EMISSION STANDARD:</th>
	                <td>EURO 6</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DRIVE TRAIN:</medium></h4>
	              <tr>
	                <th>DRIVE TYPE:</th>
	                <td>Rearwheel drive</td>
	              </tr>
	              <tr>
	                <th>OPERATION:</th>
	                <td>Electrohydraulic</td>
	              </tr>
	              <tr>
	                <th>TRANSMISSION:</th>
	                <td>7G-DCT automatic transmission</td>
	              </tr>
	              <tr>
	                <th>1st GEAR:</th>
	                <td>3.40</td>
	              </tr>
	              <tr>
	                <th>2nd GEAR:</th>
	                <td>2.19</td>
	              </tr>
	              <tr>
	                <th>3rd GEAR:</th>
	                <td>1.63</td>
	              </tr>
	              <tr>
	                <th>4th GEAR:</th>
	                <td>1.29</td>
	              </tr>
	              <tr>
	                <th>5th GEAR:</th>
	                <td>1.03</td>
	              </tr>
	              <tr>
	                <th>6th GEAR:</th>
	                <td>0.84</td>
	              </tr>
	              <tr>
	                <th>7th GEAR:</th>
	                <td>0.63</td>
	              </tr>
	              <tr>
	                <th>1st REVERSE GEAR:</th>
	                <td>2.79</td>
	              </tr>
	              <tr>
	                <th>FINAL-DRIVE RATIO:</th>
	                <td>3.67</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>SUSPENSION:</medium></h4>
	              <tr>
	                <th>STEERING:</th>
	                <td>Speed-dependent, hydraulic</td>
	              </tr>
	              <tr>
	                <th>STEERING GEAR TYPE:</th>
	                <td>Rack and pinion</td>
	              </tr>
	              <tr>
	                <th>FRONT WHEEL OR AXLE LOCATION:</th>
	                <td>Independent Suspension</td>
	              </tr>
	              <tr>
	                <th>REAR WHEEL OR AXLE LOCATION:</th>
	                <td>Independent Suspension</td>
	              </tr>
	              <tr>
	                <th>FRONT/REAR SPRINGS:</th>
	                <td>Coil spring, Double-tube gas pressure with CDC/Coil spring, Double-tube gas pressure with CDC</td>
	              </tr>
	              <tr>
	                <th>FRONT/REAR STABILIZER TYPE:</th>
	                <td>Tubular torsion bar / Torsion bar</td>
	              </tr>
	              <tr>
	                <th>BRAKES:</th>
	                <td>Discs, internally ventilated and perforated</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WHEELS:</medium></h4>
	              <tr>
	                <th>FRONT:</th>
	                <td>9.0 J x 19</td>
	              </tr>
	              <tr>
	                <th>REAR:</th>
	                <td>11.0 J x 20</td>
	              </tr>
	              <tr>
	                <th>FRONT WHEEL OFFSET:</th>
	                <td>61 mm</td>
	              </tr>
	              <tr>
	                <th>REAR WHEEL OFFSET:</th>
	                <td>68 mm</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>TRIES:</medium></h4>
	              <tr>
	                <th>FRONT:</th>
	                <td>265/35 ZR 19 (98 Y) XL</td>
	              </tr>
	              <tr>
	                <th>REAR:</th>
	                <td>295/30 ZR 20 (101 Y) XL</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DIMENSIONS:</medium></h4>
	              <tr>
	                <th>VEHICLE LENGTH:</th>
	                <td>4544 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE HEIGHT w. TAIGATE OPEN:</th>
	                <td>1985 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE HEIGHT WHEN READY TO DRIVE:</th>
	                <td>1288 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH:</th>
	                <td>1939 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH FRONT DOOR OPEN:</th>
	                <td>2982 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH INCL. BOTH MIRRORS:</th>
	                <td>2075 mm</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE:</th>
	                <td>2630 mm</td>
	              </tr>
	              <tr>
	                <th>TURNING CIRCLE:</th>
	                <td>11.50 m</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WEIGHTS:</medium></h4>
	              <tr>
	                <th>KERB WEIGHT(EU):</th>
	                <td>1645 kg</td>
	              </tr>
	              <tr>
	                <th>PERM. GROSS VEHICLE WEIGHT:</th>
	                <td>1890 kg</td>
	              </tr>
	              <tr>
	                <th>PAYLOAD(EU):</th>
	                <td>245 kg</td>
	              </tr>
	              <tr>
	                <th>FRONT AXLE LOAD AT KERB WEIGHT(EU):</th>
	                <td>765 kg</td>
	              </tr>
	              <tr>
	                <th>REAR AXLE LOAD AT KERB WEIGHT(EU):</th>
	                <td>880 kg</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>CAPACITIES:</medium></h4>
	              <tr>
	                <th>FUEL TANK CAPACITY:</th>
	                <td>65 l</td>
	              </tr>
	              <tr>
	                <th>OF WHICH RESERVE:</th>
	                <td>10 l</td>
	              </tr>
	            </table>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <div id="mercedesgtcmodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification:</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>PERFORMANCE:</medium></h4>
	              <tr>
	                <th>TOP SPEED:</th>
	                <td>317 km/h</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ACCELERATION:</medium></h4>
	              <tr>
	                <th>ACCELERATION 0‑100 KM/H:</th>
	                <td>3.7 s</td>
	              <tr>
	              <tr>
	                <th>FUEL TYPE:</th>
	                <td>Super Plus</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION, URBAN:</th>
	                <td>15.1 l/100 km</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION, EXTRA-URBAN:</th>
	                <td>9.0 l/100 km</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION COMBINED:</th>
	                <td>11.4 l/100 km</td>
	              <tr>
	              <tr>
	                <th>CO2 EMISSIONS COMBINED:</th>
	                <td>259 g/km</td>
	              <tr>
	              <tr>
	                <th>EFFICIENCY CLASS:</th>
	                <td>G</td>
	              <tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ENGINE SPECIFICATIONS:</medium></h4>
	              <tr>
	                <th>NUMBER OF CYLINDERS/ARRANGEMENT:</th>
	                <td>8 Cylinder - V - Engine</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF VALVES PER CYLINDER:</th>
	                <td>4</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT(BORE x STROKE):</th>
	                <td>3982 cm3 (83.0 mm x 92.0 mm)</td>
	              </tr>
	              <tr>
	                <th>RATED OUTPUT:</th>
	                <td>410 kW (557 hp) at 5750-6750 rpm</td>
	              </tr>
	              <tr>
	                <th>RATED TORQUE:</th>
	                <td>680 Nm at 1900 - 5500 rpm</td>
	              </tr>
	              <tr>
	                <th>GOVERNED ENGINE SPEED(MAXIMUM RPM):</th>
	                <td>7000 rpm</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO:</th>
	                <td>9.5 : 1</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DRIVE TRAIN:</medium></h4>
	              <tr>
	                <th>DRIVE TYPE:</th>
	                <td>Rearwheel drive</td>
	              </tr>
	              <tr>
	                <th>OPERATION:</th>
	                <td>Electrohydraulic</td>
	              </tr>
	              <tr>
	                <th>TRANSMISSION:</th>
	                <td>7G-DCT automatic transmission</td>
	              </tr>
	              <tr>
	                <th>1st GEAR:</th>
	                <td>3.08</td>
	              </tr>
	              <tr>
	                <th>2nd GEAR:</th>
	                <td>2.19</td>
	              </tr>
	              <tr>
	                <th>3rd GEAR:</th>
	                <td>1.63</td>
	              </tr>
	              <tr>
	                <th>4th GEAR:</th>
	                <td>1.29</td>
	              </tr>
	              <tr>
	                <th>5th GEAR:</th>
	                <td>1.03</td>
	              </tr>
	              <tr>
	                <th>6th GEAR:</th>
	                <td>0.84</td>
	              </tr>
	              <tr>
	                <th>7th GEAR:</th>
	                <td>0.63</td>
	              </tr>
	              <tr>
	                <th>1st REVERSE GEAR:</th>
	                <td>2.79</td>
	              </tr>
	              <tr>
	                <th>FINAL-DRIVE RATIO:</th>
	                <td>3.88</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>SUSPENSION:</medium></h4>
	              <tr>
	                <th>STEERING:</th>
	                <td>Speed-dependent, hydraulic</td>
	              </tr>
	              <tr>
	                <th>STEERING GEAR TYPE:</th>
	                <td>Rack and pinion</td>
	              </tr>
	              <tr>
	                <th>FRONT WHEEL OR AXLE LOCATION:</th>
	                <td>Independent Suspension</td>
	              </tr>
	              <tr>
	                <th>REAR WHEEL OR AXLE LOCATION:</th>
	                <td>Independent Suspension</td>
	              </tr>
	              <tr>
	                <th>FRONT/REAR SPRINGS:</th>
	                <td>Coil spring /Coil spring</td>
	              </tr>
	              <tr>
	                <th>FRONT/REAR STABILIZER TYPE:</th>
	                <td>Tubular torsion bar / Torsion bar</td>
	              </tr>
	              <tr>
	                <th>BRAKES:</th>
	                <td>Discs, internally ventilated and perforated</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WHEELS:</medium></h4>
	              <tr>
	                <th>FRONT:</th>
	                <td>9.0 J x 19</td>
	              </tr>
	              <tr>
	                <th>REAR:</th>
	                <td>12.0 J x 20</td>
	              </tr>
	              <tr>
	                <th>FRONT WHEEL OFFSET:</th>
	                <td>61 mm</td>
	              </tr>
	              <tr>
	                <th>REAR WHEEL OFFSET:</th>
	                <td>46 mm</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>TRIES:</medium></h4>
	              <tr>
	                <th>FRONT:</th>
	                <td>265/35 ZR 19 (98 Y) XL</td>
	              </tr>
	              <tr>
	                <th>REAR:</th>
	                <td>305/30 ZR 20 (103 Y) XL</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DIMENSIONS:</medium></h4>
	              <tr>
	                <th>VEHICLE LENGTH:</th>
	                <td>4551 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE HEIGHT w. TAIGATE OPEN:</th>
	                <td>1986 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE HEIGHT WHEN READY TO DRIVE:</th>
	                <td>1288 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH:</th>
	                <td>2007 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH FRONT DOOR OPEN:</th>
	                <td>2982 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH INCL. BOTH MIRRORS:</th>
	                <td>2075 mm</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE:</th>
	                <td>2630 mm</td>
	              </tr>
	              <tr>
	                <th>TURNING CIRCLE:</th>
	                <td>11.47 m</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WEIGHTS:</medium></h4>
	              <tr>
	                <th>KERB WEIGHT(EU):</th>
	                <td>1645 kg</td>
	              </tr>
	              <tr>
	                <th>PERM. GROSS VEHICLE WEIGHT:</th>
	                <td>1890 kg</td>
	              </tr>
	              <tr>
	                <th>PAYLOAD(EU):</th>
	                <td>190 kg</td>
	              </tr>
	              <tr>
	                <th>FRONT AXLE LOAD AT KERB WEIGHT(EU):</th>
	                <td>785 kg</td>
	              </tr>
	              <tr>
	                <th>REAR AXLE LOAD AT KERB WEIGHT(EU):</th>
	                <td>915 kg</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>CAPACITIES:</medium></h4>
	              <tr>
	                <th>FUEL TANK CAPACITY:</th>
	                <td>65 l</td>
	              </tr>
	              <tr>
	                <th>OF WHICH RESERVE:</th>
	                <td>10 l</td>
	              </tr>
	            </table>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          </div>
	        </div>
	      </div>
	    </div>
	
	    <div id="mercedesgtrmodal" class="modal fade" role="dialog">
	      <div class="modal-dialog">
	        <!-- Modal content-->
	        <div class="modal-content" style="width: 100%">
	          <div class="modal-header">
	            <button type="button" class="close" data-dismiss="modal">&times;</button>
	            <h3 class="modal-title">Technical Specification:</h3>
	          </div>
	          <div class="modal-body">
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>PERFORMANCE:</medium></h4>
	              <tr>
	                <th>TOP SPEED:</th>
	                <td>318 km/h</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ACCELERATION:</medium></h4>
	              <tr>
	                <th>ACCELERATION 0‑100 KM/H:</th>
	                <td>3.6 s</td>
	              <tr>
	              <tr>
	                <th>FUEL TYPE:</th>
	                <td>Super Plus</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION, URBAN:</th>
	                <td>15.1 l/100 km</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION, EXTRA-URBAN:</th>
	                <td>9.0 l/100 km</td>
	              <tr>
	              <tr>
	                <th>FUEL CONSUMPTION COMBINED:</th>
	                <td>11.4 l/100 km</td>
	              <tr>
	              <tr>
	                <th>CO2 EMISSIONS COMBINED:</th>
	                <td>259 g/km</td>
	              <tr>
	              <tr>
	                <th>EFFICIENCY CLASS:</th>
	                <td>G</td>
	              <tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>ENGINE SPECIFICATIONS:</medium></h4>
	              <tr>
	                <th>NUMBER OF CYLINDERS/ARRANGEMENT:</th>
	                <td>8 Cylinder - V - Engine</td>
	              </tr>
	              <tr>
	                <th>NUMBER OF VALVES PER CYLINDER:</th>
	                <td>4</td>
	              </tr>
	              <tr>
	                <th>DISPLACEMENT(BORE x STROKE):</th>
	                <td>3982 cm3 (83.0 mm x 92.0 mm)</td>
	              </tr>
	              <tr>
	                <th>RATED OUTPUT:</th>
	                <td>430 kW (585 hp) at 6250 rpm</td>
	              </tr>
	              <tr>
	                <th>RATED TORQUE:</th>
	                <td>700 Nm at 1900 - 5500 rpm</td>
	              </tr>
	              <tr>
	                <th>GOVERNED ENGINE SPEED(MAXIMUM RPM):</th>
	                <td>7000 rpm</td>
	              </tr>
	              <tr>
	                <th>COMPRESSION RATIO:</th>
	                <td>9.5 : 1</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>MIXTURE FORMATION:</medium></h4>
	              <tr>
	                <th>FUEL PREPARATION:</th>
	                <td>Petrol injection</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>EXHAUST:</medium></h4>
	              <tr>
	                <th>EMISSION STANDARD:</th>
	                <td>EURO 6</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DRIVE TRAIN:</medium></h4>
	              <tr>
	                <th>DRIVE TYPE:</th>
	                <td>Rearwheel drive</td>
	              </tr>
	              <tr>
	                <th>OPERATION:</th>
	                <td>Electrohydraulic</td>
	              </tr>
	              <tr>
	                <th>TRANSMISSION:</th>
	                <td>7G-DCT automatic transmission</td>
	              </tr>
	              <tr>
	                <th>1st GEAR:</th>
	                <td>3.08</td>
	              </tr>
	              <tr>
	                <th>2nd GEAR:</th>
	                <td>2.19</td>
	              </tr>
	              <tr>
	                <th>3rd GEAR:</th>
	                <td>1.63</td>
	              </tr>
	              <tr>
	                <th>4th GEAR:</th>
	                <td>1.29</td>
	              </tr>
	              <tr>
	                <th>5th GEAR:</th>
	                <td>1.03</td>
	              </tr>
	              <tr>
	                <th>6th GEAR:</th>
	                <td>0.84</td>
	              </tr>
	              <tr>
	                <th>7th GEAR:</th>
	                <td>0.69</td>
	              </tr>
	              <tr>
	                <th>1st REVERSE GEAR:</th>
	                <td>2.79</td>
	              </tr>
	              <tr>
	                <th>FINAL-DRIVE RATIO:</th>
	                <td>3.67</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>SUSPENSION:</medium></h4>
	              <tr>
	                <th>STEERING:</th>
	                <td>Speed-dependent, hydraulic</td>
	              </tr>
	              <tr>
	                <th>STEERING GEAR TYPE:</th>
	                <td>Rack and pinion</td>
	              </tr>
	              <tr>
	                <th>FRONT WHEEL OR AXLE LOCATION:</th>
	                <td>Independent Suspension</td>
	              </tr>
	              <tr>
	                <th>REAR WHEEL OR AXLE LOCATION:</th>
	                <td>Independent Suspension</td>
	              </tr>
	              <tr>
	                <th>FRONT/REAR SPRINGS:</th>
	                <td>Coil spring /Coil spring</td>
	              </tr>
	              <tr>
	                <th>FRONT/REAR STABILIZER TYPE:</th>
	                <td>Tubular torsion bar / Torsion bar</td>
	              </tr>
	              <tr>
	                <th>BRAKES:</th>
	                <td>Discs, internally ventilated and perforated</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WHEELS:</medium></h4>
	              <tr>
	                <th>FRONT:</th>
	                <td>10.0 J x 19</td>
	              </tr>
	              <tr>
	                <th>REAR:</th>
	                <td>12.0 J x 20</td>
	              </tr>
	              <tr>
	                <th>FRONT WHEEL OFFSET:</th>
	                <td>56 mm</td>
	              </tr>
	              <tr>
	                <th>REAR WHEEL OFFSET:</th>
	                <td>52 mm</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>TRIES:</medium></h4>
	              <tr>
	                <th>FRONT:</th>
	                <td>275/35 ZR 19 (100 Y) XL</td>
	              </tr>
	              <tr>
	                <th>REAR:</th>
	                <td>325/30 ZR 20 (106 Y) XL</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>DIMENSIONS:</medium></h4>
	              <tr>
	                <th>VEHICLE LENGTH:</th>
	                <td>4551 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE HEIGHT w. TAIGATE OPEN:</th>
	                <td>2123 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE HEIGHT WHEN READY TO DRIVE:</th>
	                <td>1284 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH:</th>
	                <td>2007 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH FRONT DOOR OPEN:</th>
	                <td>2982 mm</td>
	              </tr>
	              <tr>
	                <th>VEHICLE WIDTH INCL. BOTH MIRRORS:</th>
	                <td>2075 mm</td>
	              </tr>
	              <tr>
	                <th>WHEELBASE:</th>
	                <td>2630 mm</td>
	              </tr>
	            </table>
	            <br>
	            <table class="table table-responsive table-bordered table-striped">
	              <h4> <medium>WEIGHTS:</medium></h4>
	              <tr>
	                <th>KERB WEIGHT(EU):</th>
	                <td>1630 kg</td>
	              </tr>
	              <tr>
	                <th>PERM. GROSS VEHICLE WEIGHT:</th>
	                <td>1890 kg</td>
	              </tr>
	              <tr>
	                <th>PAYLOAD(EU):</th>
	                <td>260 kg</td>
	              </tr>
	              <tr>
	                <th>FRONT AXLE LOAD AT KERB WEIGHT(EU):</th>
	                <td>755 kg</td>
	              </tr>
	              <tr>
	                <th>REAR AXLE LOAD AT KERB WEIGHT(EU):</th>
	                <td>875 kg</td>
	              </tr>
	            </table>
	          </div>
	          <div class="modal-footer">
	            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	          </div>
	        </div>
	      </div>
	    </div>
	<!--=======================================================================================================================================-->
    <br>
    <br>
    <br>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
  </body>
</html>
