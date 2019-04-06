<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
</head>
<%
String candidateId =session.getAttribute("candidateId").toString();
List<ResearchExperience> researchExperiences  = (List<ResearchExperience>)request.getAttribute("researchExperiences");
CandidateDetails details = (CandidateDetails)request.getAttribute("details");
int i;
%>
<body>
	
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>

	<div class="container">
		<div class="row">
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h2>Research Experience</h2>
				<table class="table table-justified table-bordered">
					<thead>
						<th>Period (of commencement and closure of the project)</th>
						<th>Post / Designation</th>
						<th>Organization for which the Project was done</th>
						<th>Title of Research</th>
						<th>Funding Agency if any</th>
						<th colspan="2">
							<form action="addResearchExperience" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="candidateId" value="<%=candidateId %>">
								<center>
									<button type="submit" class="btn btn-primary">Add</button>
								</center>
							</form>
						</th>
						<%for(ResearchExperience temp:researchExperiences){ %>
						<tr>
							<td><%=temp.getPeriod() %></td>
							<td><%=temp.getPostDesignation() %></td>
							<td><%=temp.getOrganization() %></td>
							<td><%=temp.getResearchTitle() %></td>
							<td><%=temp.getFundingAgency() %></td>
							<td>
								<form action="editResearchExperience" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-primary">Edit</button>
								</form>
							</td>
							<td>
								<form onsubmit="return confirm('Do you really want to delete ?')" action="deleteResearchExperience" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-danger">Delete</button>
								</form>
							</td>
						<tr>
						<%} %>
					</thead>
				</table>
				</div>
				
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4">
					<center>
					<a href="${pageContext.request.contextPath}/professionalTrainingReceived"><button class="btn btn-lg btn-primary">Next</button></a>
					</center>
				</div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
		</div>
	</div>
				
</body>

</html>
