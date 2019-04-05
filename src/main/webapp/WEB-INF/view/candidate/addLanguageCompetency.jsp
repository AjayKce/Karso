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
			<div class="col-lg-4 col-md-4 col-sm-0 col-xs-0"></div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<h2>Add Language Competency</h2>
				<form:form method="post" action="processAddLanguageCompetency" modelAttribute="language">
					<form:hidden path="id" />
					<div class="row">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="knownLanguage">Known Language :</label>
							<form:input cssClass="form-control" required="required" path="knownLanguage"/>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
							<form:checkbox path="isRead" value="active"/>
							<label for="isRead">Read :</label>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
							<form:checkbox path="isSpeak" value="active"/>
							<label for="isSpeak">Speak :</label>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
							<form:checkbox path="isWrite" value="active"/>
							<label for="isWrite">Write :</label>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
						<center>
							<button class="btn btn-success" type="submit">ADD</button>
						</center>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
				</form:form>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-0 col-xs-0"></div>
		</div>
	</div>
</body>
</html>