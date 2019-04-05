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
				<form:form method="post" action="processAddReference" modelAttribute="reference">
					<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12">Reference</h2>
					<div class="row" style="background-color:#ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
					<form:hidden path="id" />
					<input type="hidden" name="role" value="research" />
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="name">Name :</label>
						<form:input cssClass="form-control" required="required" path="name"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="OccPosDes">Occupation / Position / Designation :</label>
						<form:input cssClass="form-control" required="required" path="OccPosDes"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="organization">Organization :</label>
						<form:input cssClass="form-control" required="required" path="organization"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="Address1">Address Line 1 :</label>
						<form:input cssClass="form-control" required="required" path="Address1"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="Address2">Address Line 2 :</label>
						<form:input cssClass="form-control" required="required" path="Address2"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="Address3">Address Line 3 :</label>
						<form:input cssClass="form-control" required="required" path="Address3"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="city">City :</label>
						<form:input cssClass="form-control" required="required" path="city"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="pincode">Pincode :</label>
						<form:input cssClass="form-control" required="required" path="pincode"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="mobileNumber">Mobile Number :</label>
						<form:input cssClass="form-control" required="required" path="mobileNumber"/>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<label for="email">Email :</label>
						<form:input cssClass="form-control" required="required" path="email"/>
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
			<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
			</div>
			</div>
				
</body>

</html>
