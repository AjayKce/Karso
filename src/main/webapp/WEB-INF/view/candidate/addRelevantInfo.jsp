<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Karso</title>
<jsp:include page="../bootstrap.jsp" />
</head>
<body>
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>

<div class="container">
<div class="row">
<div class="col-lg-12 col-sm-12 col-xs-12 col-sm-12"><br><br><br><br></div>
<div class="col-lg-3 col-sm-3 col-xs-4 col-sm-4"></div>
<div class="col-lg-6 col-sm-6 col-xs-4 col-sm-4">
<form:form method="post" action="processRelevantForm" modelAttribute="relevantInfo">
	<form:hidden path="id" />
	<div class="row" style="background-color:#ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
		<label for="info">Relevant Information / Acheivement</label>
		<form:input path="info" cssClass="form-control" required="required"/>
		<br>
	</div>
	</div>
	<div class="row">
		<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4"></div>
		<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4">
			<br>
			<center><button type="submit" class="btn btn-primary">Submit</button></center>
		</div>
		<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4"></div>
	</div>
</form:form>
</div>
<div class="col-lg-3 col-sm-3 col-xs-4 col-sm-4"></div>
</div>
</div>
</body>
</html>