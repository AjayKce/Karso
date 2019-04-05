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
							Action
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
				
				
				<%int rExp = details.getResearchExperience(); %>
				
				<%for(i=researchExperiences.size();i<rExp;i++){ %>
					<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<form:form method="post" action="processAddResearchExperience" modelAttribute="researchExperience">
					<form:hidden path="id" />
					<input type="hidden" name="role" value="research" />
					<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12">Research Experience <%=i+1 %></h2>
					<div class="row" style="background-color:#ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="period">Period (of commencement and closure of the project) :</label>
							<form:input cssClass="form-control" required="required" path="period"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="postDesignation">Post / Designation :</label>
							<form:input cssClass="form-control" required="required" path="postDesignation"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="organization">Organisation for which the Project was done:</label>
							<form:input cssClass="form-control" required="required" path="organization"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="researchTitle">Title of Research :</label>
							<form:input cssClass="form-control" required="required" path="researchTitle"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="fundingAgency">Funding Agency if any :</label>
							<form:input cssClass="form-control" value="Nil" required="required" path="fundingAgency"/>
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
			<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
				<%} %>
				
				<%if(rExp<=researchExperiences.size()){ %>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4">
					<center>
					<a href="${pageContext.request.contextPath}/professionalTrainingReceived"><button class="btn btn-lg btn-primary">Next</button></a>
					</center>
				</div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
				<%} %>
		</div>
	</div>
				
</body>

</html>
