<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>adminscreen</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
<style type="text/css">
.enroll {
	background-image:
		url("https://images.pexels.com/photos/457881/pexels-photo-457881.jpeg?auto=compress&cs=tinysrgb&w=600");
	background-size: 1600px 600px;
	background-repeat: no-repeat;
}

.heading {
	font-family: cursive;
	text-align: center;
	margin-bottom: 20px;
}

form {
	width: 400px
}

.view {
	background-image: url("Images/viewstudent.jpg");
	background-size: cover;
	background-repeat: no-repeat;
}

.container h-100 {
	text-align: center;
}
</style>

<script type="text/javascript">
	function payfees() {
		document.fn.action = "fees";
		document.fn.submit();
	}

	function removestudent() {
		document.fn.action = "remove";
		document.fn.submit();
	}

	function shitfbatch() {
		document.fn.action = "shift";
		document.fn.submit();
	}

	function batchsearch() {
		document.fn.action = "search";
		document.fn.submit();
	}

</script>
</head>
<body>
	<div class="card">
		<nav class="d-flex justify-content-between p-2 border border-primary">
			<img src="Images/App-Logo.png" width="100px" height="50px">
			<div class="pt-2">
				<a href="#enroll">
					<button class="btn btn-outline-primary">Enroll Student</button>
				</a> 
				<a href="#view">
					<button class="btn btn-outline-primary">View Student</button>
				</a>
				<a href="/">
					<button class="btn btn-outline-primary">Logout</button>
				</a>
			</div>
		</nav>
		<section class="vh-100 gradient-custom enroll mt-2" id="enroll">
			<div class="container h-100">
				<div class="row justify-content-center h-100 w-75">
					<div class="col-12 col-lg-9 col-xl-7">
						<div class="card shadow-2-strong card-registration mt-0"
							style="border-radius: 15px;">
							<div class="card-body mt-0">
								<h3 class="heading">Student Enrollment Form</h3>

								<form action="enroll_student">
									<div class="row ">
										<div class="col-md-6 mb-2">
											<div class="form-outline">
												<input type="text" id="firstName"
													class="form-control form-control-sm" name="studentName" />
												<label class="form-label" for="firstName">First Full
													Name</label>
											</div>
										</div>
										<div class="col-md-6 mb-2">
											<div class="form-outline">
												<input type="email" id="lastName"
													class="form-control form-control-sm" name="studentEmail" />
												<label class="form-label" for="lastName">Student
													Email</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 mb-2 d-flex align-items-center">
											<div class="form-outline datepicker w-100">
												<input type="number" class="form-control form-control-sm"
													id="birthdayDate" name="StudentAge" /> <label
													for="birthdayDate" class="form-label">Student Age</label>
											</div>
										</div>

										<div class="col-md-6 mb-2 pb-2">
											<div class="form-outline">
												<input type="tel" id="text"
													class="form-control form-control-sm"
													name="studentCollageName" /> <label class="form-label"
													for="phoneNumber">Student Collage Name</label>
											</div>
										</div>
									</div>
									<div class="row">
										<div class="col-md-6 mb-2 pb-2">
											<div class="form-outline">
												<input type="number" id="emailAddress"
													class="form-control form-control-sm" name="feesPaid" /> <label
													class="form-label" for="emailAddress">Fees Paid</label>
											</div>
										</div>
										<div class="col-md-6 mb-2">
											<h6 class="mb-2 pb-1">Student Course :</h6>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="studentCourse" id="java" value="Java" /> <label
													class="form-check-label" for="java">Java</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="StudentCourse" id="python" value="Python" /> <label
													class="form-check-label" for="python">Python</label>
											</div>
											<div class="form-check form-check-inline">
												<input class="form-check-input" type="radio"
													name="StudentCourse" id="testing" value="Testing" /> <label
													class="form-check-label" for="testing">Testing</label>
											</div>
										</div>

									</div>
									<div class="row">
										<div class="col">
											<select class="select form-control-sm" name="batchMode">
												<option value="#" disabled>Select Batch Mode</option>
												<option value="Online">Online</option>
												<option value="Offline">Offline</option>

											</select> <label class="form-label select-label">Batch Mode</label>
										</div>
										<div class="col">
											<select class="select form-control-sm" name="batchNumber">
												<option value="#" disabled>Select Batch Number</option>
												<option value="FDJ-181">FDJ-181</option>
												<option value="REG-181">REG-181</option>
												<option value="FDJ-183">FDJ-183</option>
												<option value="REG-183">REG-183</option>
												<option value="FDJ-186">FDJ-186</option>
											</select> <label class="form-label select-label">Batch Number</label>
										</div>
									</div>
									<div class="mt-2 pt-2 d-flex justify-content-center">
										<input class="btn btn-primary btn-lg" type="submit"
											value="Submit" />
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<section class="view" style="height: 650px" id="view" >
			<h1 style="color: white;">View Student</h1>
			<section class="view" style="height: 530px" id="view">
				<h1 class="text-center" style="color: white">Student Details..!</h1>
				<div class="text-center w-100">
					<form action="search" class="w-100">
						<select class="select form-control-sm border border-primary"
							name="batchNumber">
							<option value="#" slected>Select Batch Number</option>
							<option value="FDJ-181">FDJ-181</option>
							<option value="REG-181">REG-181</option>
							<option value="FDJ-183">FDJ-183</option>
							<option value="REG-183">REG-183</option>
							<option value="FDJ-186">FDJ-186</option>
						</select>
						<button class="btn btn-outline-primary mb-1">Search</button>
					</form>
						<h5 style="color: red;">${message}</h5>
				</div>

				<form name="fn" class="table table-hover">
					<table class="table table-hover" style="font-size: small">
						<thead>
							<tr>
								<th>ID</th>
								<th>Student Name</th>
								<th>Student Email</th>
								<th>Age</th>
								<th>Collage Name</th>
								<th>Course Name</th>
								<th>Bath No</th>
								<th>Mode</th>
								<th>Fess Recived</th>
								<th>Select</th>
								<th>Actions</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${data}" var="s">
								<tr>
									<td>${s.studentId}</td>
									<td>${s.studentName}</td>
									<td>${s.studentEmail}</td>
									<td>${s.studentAge}</td>
									<td>${s.studentCollageName}</td>
									<td>${s.studentCourse}</td>
									<td>${s.batchNumber}</td>
									<td>${s.batchMode}</td>
									<td>${s.feesPaid}</td>
									<td><input type="radio" name="studentId"
										value="${s.studentId}"></td>
									<td>
										<div class="btn-group btn-group-sm" role="group"
											aria-label="...">
											<button class="btn btn-outline-success" 
											onclick="payfees()">PayFees</button>
											<button class="btn btn-outline-primary"
												onclick="shitfbatch()">ShiftBatch</button>
											<button class="btn btn-outline-danger"
												onclick="removestudent()">Remove</button>
										</div>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</form>
			</section>
		</section>
	</div>
</body>
</html>