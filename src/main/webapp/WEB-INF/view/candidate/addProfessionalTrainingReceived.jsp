<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
</head>
<body>
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
			<br><br>
				<h4>Professional Training Received</h4>
				<form:form method="post" action="processAddProfessionalTrainingReceived" modelAttribute="training">
				<div class="row" style="background-color:#ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
					<form:hidden path="id" />
					<input type="hidden" name="role" value="research" />
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="year">Year :</label>
						<form:input cssClass="form-control" required="required" path="year"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="trainingNature">Nature of Training :</label>
						<form:input cssClass="form-control" required="required" path="trainingNature"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="duration">Duration :</label>
						<form:input cssClass="form-control" required="required" path="duration"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="organization">Organisation where training was provided :</label>
						<form:input cssClass="form-control" required="required" path="organization"/>
						<br>
					</div>
					</div>
					<div class="row">
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"><br>
						<center><button type="submit" class="btn btn-lg btn-success">save</button></center>
					</div>
					<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
					</div>
				</form:form>
				</div>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
			</div>
			</div>
				
</body>

</html>
