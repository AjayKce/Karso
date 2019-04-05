<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
</head>
<%
String candidateId =session.getAttribute("candidateId").toString();
List<ProfessionalTrainingReceived> trainings = (List<ProfessionalTrainingReceived>)request.getAttribute("trainings");
%>
<body>
	
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>
	
	<div class="container">
	<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h2>Professional Training Received </h2>
				<table class="table table-justified table-bordered">
					<thead>
						<th>Year</th>
						<th>Nature of Training</th>
						<th>Duration</th>
						<th>Organisation where training was provided</th>
						<th colspan="2">
							<form action="addProfessionalTrainingReceived" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="candidateId" value="<%=candidateId %>">
								<center>
								<button type="submit" class="btn btn-primary">Add</button>
								</center>
							</form>
						</th>
						<%for(ProfessionalTrainingReceived temp:trainings){ %>
						<tr>
							<td><%=temp.getYear() %></td>
							<td><%=temp.getTrainingNature() %></td>
							<td><%=temp.getDuration() %></td>
							<td><%=temp.getOrganization() %></td>
							<td>
								<form action="editProfessionalTrainingReceived" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-info">Edit</button>
								</form>
							</td>
							<td>
								<form onsubmit="return confirm('Do you really want to delete ?')" action="deleteProfessionalTrainingReceived" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-danger">Delete</button>
								</form>
							</td>
						<tr>
						<%} %>
					</thead>
				</table>
				</div>
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4"></div>
						<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4">
							<form onsubmit="return confirm('Do you confirm to proceed to next step?')" action="professionalBodyMembership" method="post" style="padding:0px;margin:0px;border:0px;">
								<center><button type="submit" class="btn btn-primary">Next</button></center>
							</form>
						</div>
						<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4"></div>
					</div>
				</div>
				</div>
				</div>
</body>

</html>
