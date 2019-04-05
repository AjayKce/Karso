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
				<form:form method="post" action="processAddExperience" modelAttribute="experience">
					<form:hidden path="id" />
					<form:hidden path="role" />
					<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12">Experience</h2>
					<div class="row" style="background-color:#ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="period">Period (Joining date & Date of Leaving to be mentioned) :</label>
							<form:input cssClass="form-control" required="required" path="period"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="postAndDesignation">Post / Designation :</label>
							<form:input cssClass="form-control" required="required" path="postAndDesignation"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="organizationName">Name of the Organisation :</label>
							<form:input cssClass="form-control" required="required" path="organizationName"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="natureOfWork">Nature of work :</label>
							<form:input cssClass="form-control" required="required" path="natureOfWork"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="reasonForLeaving">Reason for Leaving :</label>
							<form:input cssClass="form-control" required="required" path="reasonForLeaving"/>
							<br>
						</div>
						</div>
						<div class="row">
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
							<br/>
							<center><button type="submit" class="btn btn-lg btn-success">save</button></center>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
					</div>
				</form:form>
		</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
	</div>
</body>
</html>