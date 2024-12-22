<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add product</title>
<style>
body {
	background-image: url('images/bg1.jpg');
	/* Correctly reference your image */
	background-size: cover;
	background-position: center;
	color: white;
}
</style>
</head>
<body>
	<jsp:include page="navbar.jsp"></jsp:include>

	<!-- Registration 3 - Bootstrap Brain Component -->
	<section class="p-3 p-md-4 p-xl-5">


		<div class="container text-center mt-3"
			style="background: transparent; color: white; border: solid; border-radius: 30px; padding: 20px; backdrop-filter: blur(2px); margin: 0px 100px 0px 150px">
			<div style="margin:0px 300px 0px 300px">
				<div class="p-3 p-md-4 p-xl-5">
					<div class="row">
						<div class="col-12">
							<div class="mb-5">
								<h1 class="h3">ENTER CUSTOMER DETAILS</h1>
								<!-- <h2 class="fs-6 fw-normal text-secondary m-0">ENTER CUSTOMER DETAILS</h2> -->
							</div>
						</div>
					</div>
					<form action="add-customer" method="post">
						<div class="row gy-3 gy-md-4 overflow-hidden">
							<div class="col-12">
								<label for="firstName" class="form-label"><span
									class="text-danger"></span></label> <input type="text"
									class="form-control" name="name" id="firstName"
									placeholder="Enter Full Name *" required>
							</div>
							<div class="col-12">
								<label for="noofpeo" class="form-label"><span
									class="text-danger"></span></label> <input type="number"
									class="form-control" name="noofpeople" id="noofpeo"
									placeholder="Number of People *" required>
							</div>
							<div class="col-12">
								<label for="rt" class="form-label"><span
									class="text-danger"></span></label> <input type="text"
									class="form-control" name="roomtype" id="rt"
									placeholder="Room Type *" required>
							</div>
							<div class="col-12">
								<label for="password" class="form-label"><span
									class="text-danger"></span></label> <input type="text"
									class="form-control" name="checkin" id="password"
									placeholder="Check In Date & Time *" value="" required>
							</div>
							<div class="col-12">
								<label for="password" class="form-label"><span
									class="text-danger"></span></label> <input type="text"
									class="form-control" name="checkout" id="password"
									placeholder="Check Out Date & Time *" value="" required>
							</div>


							<div class="col-12">
								<div class="d-grid">
									<button class="btn bsb-btn-xl btn-primary" type="submit">Save</button>
								</div>
							</div>
						</div>
					</form>


				</div>
			</div>
		</div>
		</div>
		</div>
	</section>
</body>
</html>



