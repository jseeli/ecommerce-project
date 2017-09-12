<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Super car</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/home.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>

	<body>
	<!--================================================ Bottom Navigator Bar ================================================-->
		<nav id="BottomNavBar" class="navbar navbar-default navbar-fixed-bottom" role="navigation">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" >
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar1">
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<a class="navbar-brand" href="#about us">About us</a>
						</div>
					</div>
					<div id="navbar1" class="collapse navbar-collapse">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
 							<div class="nav navbar-nav navbar-right">
								<ul>
									<li><a href="#Facebook"><img src="<spring:url value="/resources/icons/facebook-logo-1.png"/>" alt="Facebook" style="width:25px;margin-top:10px"></a></li>
									<li><a href="#google+"><img src="<spring:url value="/resources/icons/googlepluslogo.png"/>"  alt="Google+" style="width:25px;margin-top:10px"></a></li>
									<li><a href="#Twitter"><img src="<spring:url value="/resources/icons/twitter-1.png"/>"  alt="Twitter" style="width:25px;margin-top:10px"></a></li>
									<li><a href="#instagram"><img src="<spring:url value="/resources/icons/instagram.png"/>" alt="Instagram" style="width:25px;margin-top:10px"></a></li>
								</ul>
							</div>
						</div>
					</div><!--/.nav-collapse -->
				</div>			
			</div>
		</nav>
	
		<!-- <script
		  src="https://code.jquery.com/jquery-3.2.1.js"
		  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="
		  crossorigin="anonymous">
		</script>
	
	    <script>
	        window.sr = ScrollReveal();
	        sr.reveal('#BottomNavBar', {
	          duration: 2000,
	          origin: 'up',
	        });
		</script>
		
		 <!-- <script>
	        window.sr = ScrollReveal();
	        sr.reveal('.navbar-right', {
	          duration: 2000,
	          origin: 'up',
	        });
		</script>-->
		
		<!-- <script>
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
	    </script>-->
	</body>
</html>