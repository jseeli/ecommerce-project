<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Admin Home</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

  <body>
	
	<jsp:include page="/WEB-INF/views/AdminHeader.jsp"></jsp:include>
    
<!--=============================================== Carousel with 3 images ===========================================-->
	<div class="container container-center"> 
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<!--======= Indicators =========-->
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<!-- <li data-target="#myCarousel" data-slide-to="3"></li>
				<li data-target="#myCarousel" data-slide-to="4"></li>-->
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
				
				<!-- <div class="item">
					<img class="img-rounded img-responsive" src="<spring:url value="/resources/images/lamborghini-huracan.jpg"/>" alt="Lamborghini-Huracan" style="width:100%">
				</div>
				
				<<div class="item">
					<img class="img-rounded img-responsive" src="<spring:url value="/resources/images/pagani-1.jpg"/>" alt="Pagani" style="width:100%">
				</div>-->
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
		<div class="container-fluid">
			<div class="row">
				<h1 class="text-center">Information</h1>
				<div id="info1" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/lamborghini aventador.jpg"/>" class="img-rounded img-responsive" alt="Lamborghini Aventador" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Lamborghini Aventador</h4>
						</div>
					</div>
				</div>
				<div id="info2" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/mercedes-benz-sls-amg-supercar.jpg"/>" class="img-rounded img-responsive" alt="Mercedes Benz amg" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Mercedes Benz amg</h4>
						</div>
					</div>
				</div>
				<div id="info3" class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
					<div class="thumbnail">
						<img src="<spring:url value="/resources/images/pagani.jpg"/>" class="img-rounded img-responsive" alt="Pagani" style="width:100%">
						<div class="caption">
							<h4 class="text-center">Pagani</h4>
						</div>
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

    <br>
    <br>
    <br>
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    
      <!-- <script
		  src="https://code.jquery.com/jquery-3.2.1.js"
		  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
		  crossorigin="anonymous">
      </script>
      
      <script>
	      sr.reveal('.text-center', {
	          duration: 2000,
	          origin: 'top',
	          distance: '300px',
	        });
	      sr.reveal('#info1', {
	          duration: 2000,
	          origin: 'left',
	          rotate: { x: 70, y: 70, z: 70 },
	          distance: '300px',
	        });
	      
	      sr.reveal('#info2', {
	          duration: 2000,
	          origin: 'bottom',
	          rotate: { x: 70, y: 70, z: 70 },
	          distance: '300px',
	        });
	      sr.reveal('#info3', {
	          duration: 2000,
	          origin: 'right',
	          rotate: { x: 70, y: 70, z: 70 },
	          distance: '300px',
	        });
      </script>
      
      <script>
		    $(function () {
		      // Smooth Scrolling
		      $('a[href*="#"]:not([href="#"])').click(function () {
		        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname)
		        {
		          var $target = $(this.hash);
		          target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
		          if (target.length) {
		            $('html, body').animate({
		              scrollTop: target.offset().top,
		            }, 1000);
		            return false;
		          }
		        }
		      });
		    });
    	</script> -->
  </body>
    <!--<div class="parallax2"></div>-->
    <!--<div class="parallax3"></div>-->
</html>
