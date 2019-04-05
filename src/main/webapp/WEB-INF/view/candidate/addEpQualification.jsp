<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>karso</title>
<jsp:include page="../bootstrap.jsp" />
</head>
<body>
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
			<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<form:form method="post" action="processAddEpQualification" modelAttribute="epQualification">
					<form:hidden path="id" />
					<div class="row" style="background-color:#ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="degree">Degree:</label>
							<form:input cssClass="form-control" required="required" path="degree"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="classObtainedPercentage">Class Obtained / Percentage :</label>
							<form:input cssClass="form-control" required="required" path="classObtainedPercentage"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="specialization">Specialization :</label>
							<form:input cssClass="form-control" required="required" path="specialization"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="collegeAndUniversity">College and University :</label>
							<form:input cssClass="form-control" required="required" path="collegeAndUniversity"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="historyOfArrears">History of Arrears if any :</label>
							<form:input cssClass="form-control" required="required" path="historyOfArrears"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="workMode">Part / Full /Distance Mode :</label>
							<form:select cssClass="form-control" required="required" path="workMode">
								<option>Part Time</option>
								<option>Full Time</option>
								<option>Distance Mode</option>
							</form:select>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="yearOfCompletion">Year of Completion :</label>
							<form:input cssClass="form-control" required="required" path="yearOfCompletion"/>
							<br>
						</div>
						</div>
						<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<br>
							<center><button type="submit" class="btn btn-lg btn-success">save</button></center>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
					</div>
				</form:form>
			</div>
			</div>
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
		</div>
	</div>
</body>
</html>