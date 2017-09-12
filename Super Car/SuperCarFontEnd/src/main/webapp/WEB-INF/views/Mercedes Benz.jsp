<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Mercedes Benz</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Mercedes Benz.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

	<body>
		<jsp:include page="/WEB-INF/views/UserHeader.jsp"></jsp:include>
		
		<div id="top" class="container-fluid">
	      <img class="img-responsive" src="<spring:url value="/resources/images/mercedes_logos_PNG30.png"/>"/>
	    </div>
	    
	    <div id="mercedesgt" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/e13d60811b4cf8601e8512c51e0566f8.png"/>"/>
	        </div>
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2>Mercedes-AMG GT</h2>
	          <h4>
	            <span class="label label-success">4.5<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 75000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#mercedesgtmodal">More Details</button>
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
	
	    <div id="mercedesgts" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2>Mercedes-AMG GT S</h2>
	          <h4>
	            <span class="label label-success">4.7<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 80000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#mercedesgtsmodal">More Details</button>
	          <br>
	          <br>
	          <button class="btn btn-warning">Add Cart</button>
	          <button class="btn btn-warning"> Buy Now</button>
	          <br>
	          <br>
	        </div>
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/61811661.png"/>"/>
	        </div>
	      </div>
	    </div>
	
	    <br>
	
	    <div id="mercedesgtc" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:10px;">
	      <div class="row">
	      	<div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/PNGPIX-COM-Mercedes-AMG-GT-S-Car-PNG-Image.png"/>"/>
	        </div>
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2>Mercedes-AMG GT C Edition 50</h2>
	          <h4>
	            <span class="label label-success">4.9<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 85000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#mercedesgtcmodal">More Details</button>
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
	
	    <div id="mercedesgtr" class="container-fluid" style="height:80%;background-color:#c9c7c7;padding-top:5px;">
	      <div class="row">
	        <div class="col-sm-6" style="padding-left:35px;">
	          <h2>Mercedes-AMG GT R</h2>
	          <h4>
	            <span class="label label-success">4.8<span class="glyphicon glyphicon-star"></span></span>
	          </h4>
	          <h3>
	            Price
	            <br>
	            Rs. 90000000.00
	          </h3>
	          <button class="btn btn-info" data-toggle="modal" data-target="#mercedesgtrmodal">More Details</button>
	          <br>
	          <br>
	          <button class="btn btn-warning">Add Cart</button>
	          <button class="btn btn-warning"> Buy Now</button>
	          <br>
	          <br>
	        </div>
	        <div class="col-sm-6">
	          <img class="img-responsive" src="<spring:url value="/resources/images/2017-SUPERBOWL-AMG-GT-ROADSTER_GTC-D.png"/>"/>
	        </div>
	      </div>
	    </div>
	    <br>
	    <br>
	    <br>
	
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
		<br>
		<br>
		<br>
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
	</body>
</html>