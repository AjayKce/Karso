<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
</head>
<%
String candidateId =session.getAttribute("candidateId").toString();
CandidateDetails details = (CandidateDetails)request.getAttribute("detail");
List<EPQualification> epQualifications = (List<EPQualification>)request.getAttribute("epQualifications");
%>
<body>
	
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>
	
	<div class="container">
	<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h2>Educational and Professional Qualification (in chronological order)</h2>
				<%if(request.getAttribute("error")!=null){ %>
				<h5 style="color:red;"><%=request.getAttribute("error") %></h5>
				<%} %>
				<table class="table table-justified table-bordered">
					<thead>
						<th>Degree</th>
						<th>Class obtained / Percentage</th>
						<th>Specialization</th>
						<th>College and University</th>
						<th>Part Time / Full Time / Distance Mode</th>
						<th>History of Arrears</th>
						<th>Year of Completion</th>
						<th colspan="2">
							<center>
							<form action="addEpQualification" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="candidateId" value="<%=candidateId %>">
								<button type="submit" class="btn btn-primary">Add</button>
							</form>
							</center>
						</th>
						<%for(EPQualification temp:epQualifications){ %>
						<tr>
							<td><%=temp.getDegree() %></td>
							<td><%=temp.getClassObtainedPercentage() %></td>
							<td><%=temp.getSpecialization() %></td>
							<td><%=temp.getCollegeAndUniversity() %></td>
							<td><%=temp.getWorkMode() %></td>
							<td><%=temp.getHistoryOfArrears() %></td>
							<td><%=temp.getYearOfCompletion() %></td>
							<td>
								<form action="editEpQualification" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-primary">Edit</button>
								</form>
							</td>
							<td>
								<form onsubmit="return confirm('Do you really want to delete ?')" action="deleteEpQualification" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-danger">Delete</button>
								</form>
							</td>
						<tr>
						<%} %>
					</thead>
				</table>
				<div class="row">
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4">
					<center>
					<a onclick="return confirm('Are you sure , want to proceed ?')" href="${pageContext.request.contextPath}/experience"><button class="btn btn-lg btn-primary">Next</button></a>
					</center>
				</div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
				</div>
				</div>
				</div>
				</div>
</body>

</html>
