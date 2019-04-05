<html>
<head>
<title>karso</title>
<jsp:include page="bootstrap.jsp" />
</head>
<body>
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>
	<div class="container">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-0 col-xs-0"></div>
			<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
				<br><br><br>
				<form method="post" action="details">
					<label for="aadhar">Enter Your Aadhar Number :</label>
					<input id="aadharr" name="aadhar" type="text" class="form-control" required="required" placeholder="enter aadhar" />
					<br>
					<input type="submit" value="submit" class="btn btn-primary" />
				</form>
			</div>
			<div class="col-lg-4 col-md-4 col-sm-0 col-xs-0"></div>
		</div>
	</div>
</body>
</html>