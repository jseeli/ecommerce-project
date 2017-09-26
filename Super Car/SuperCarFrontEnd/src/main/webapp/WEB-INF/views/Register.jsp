<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Register</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/Register.css">
		<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500" rel="stylesheet" type="text/css">
		<script src="https://unpkg.com/scrollreveal/dist/scrollreveal.min.js"></script>
	</head>
	
	<body>
		<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
		<br>
		<form  modelAttribute="user" method="post" action="saveregister" class="form-signing" id="Register" >
			<div class="container">
				<div class="row">		
					<div class="col-sm-6 col-sm-offset-3 col-lg-6 col-lg-offset-3">
						<div class="box">
							<!-- <div class="center-block"> -->
								<h2>Sign Up</h2>
								<table>
									<tr>
										<td>UserName</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="UserName" name="username" Required/></td>
									</tr>
									<!-- <td>LastName</td>
									<tr>
										<td><input type="text" class="form-control" placeholder="Last Name" name="Lastname" /></td>
									</tr> -->
									<tr>
										<td>Email-ID</td>
									</tr>
									<tr>
										<td><input type="email" class="form-control" placeholder="Email-id" name="Email" Required/></td>
									</tr>
									<tr>
										<td>Create a Password</td>
									</tr>
									<tr>
										<td><input type="password" class="form-control" placeholder="Password" name="Password" Required/></td>
									</tr>
									<tr>
										<td>Gender</td>
									</tr>
									<tr>
										<td>
											<select class="form-control" name="gender" Required>
												<option value="">Gender</option>
												<option value="Male">Male</option>
												<option value="Female">Female</option>
											</select>
										</td>
									</tr>
									<tr>
										<td>Mobile Number</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="Mobile No." name="Mobile" Required/></td>
									</tr>
									<tr>
										<td>Address</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="Address" name="Address" Required/></td>
									</tr>
									<tr>
										<td>City</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="City" name="City" Required/></td>
									</tr>
									<tr>
										<td>States</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="States" name="States" Required/></td>
									</tr>
									<tr>
										<td>Country</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="Country" name="Country" Required/></td>
									</tr>
									<tr>
										<td>pincode</td>
									</tr>
									<tr>
										<td><input type="text" class="form-control" placeholder="pincode" name="Pincode" Required/></td>
									</tr>
								</table>
								<button type="submit" class="btn btn-success">Sumbit</button>
							<!-- </div> -->
						</div>
					</div>
				</div>
			</div>
		</form>
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
		sr.reveal('.box', {
	          duration: 2000,
	          origin: 'bottom',
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
</html>