<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
		<link rel="stylesheet" href="css/index.css">
	</head>

	<body>

          <jsp:include page="indexHeader.jsp"></jsp:include>
		 
		<div class="wrapper" style="background-image: url('images/p.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="images/bg-01.jpg" alt="Sorry Image Is Not Available">
				</div>
				<form action="com.controller.Register" method="post">
					<h3>Registration Form</h3>
					<div class="form-group">
						<input type="text" placeholder="First Name" class="form-control" name="Fname">
						<input type="text" placeholder="Last Name" class="form-control" name="Lname">
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Username" class="form-control" name="Uname">
						<i class="zmdi zmdi-account"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Email Address" class="form-control" name="Email">
						<i class="zmdi zmdi-email"></i>
					</div>
					<div class="form-wrapper">
						<select name="Gender" id="" class="form-control">
							<option value="" disabled selected>Gender</option>
							<option value="male">Male</option>
							<option value="femal">Female</option>
							<option value="other">Other</option>
						</select>
						<i class="zmdi zmdi-caret-down" style="font-size: 17px"></i>
					</div>
					<div class="form-wrapper">
						<input type="password" placeholder="Password" class="form-control" name="Pass">
						<i class="zmdi zmdi-lock"></i>
					</div>
					<div class="form-wrapper">
						<input type="password" placeholder="Confirm Password" class="form-control" name="Con_Pass">
						<i class="zmdi zmdi-lock"></i>
					</div>
					<button>Register
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
				</form>
			</div>
		</div>
      
      <jsp:include page="indexFooter.jsp"></jsp:include>
      
	</body>
</html>