<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
</head>
<%
String candidateId =session.getAttribute("candidateId").toString();
CandidateDetails details = (CandidateDetails)request.getAttribute("detail");
List<Experience> experiences = (List<Experience>)request.getAttribute("experiences");
int teachingExp  = (int)request.getAttribute("teachingExp");
int industryExp  = (int)request.getAttribute("industryExp");
int researchExp  = (int)request.getAttribute("researchExp");
int i=0,j=0;
%>
<body>
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>

	<div class="container">
		<div class="row">
		
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h2>Experience (in chronological order)</h2>
				<%if(request.getAttribute("error")!=null){ %>
				<h5 style="color:red;"><%=request.getAttribute("error") %></h5>
				<%} %>
				<table class="table table-justified table-bordered">
					<thead>
						<th>Period (Joining date and Date of Leaving to be mentioned)</th>
						<th>Post / Designation</th>
						<th>Name of the Organization</th>
						<th>Nature of work</th>
						<th>Reason for Leaving</th>
						<th colspan="2">
							Action
						</th>
						<%for(Experience temp:experiences){ %>
						<tr>
							<td><%=temp.getPeriod() %></td>
							<td><%=temp.getPostAndDesignation() %></td>
							<td><%=temp.getOrganizationName() %></td>
							<td><%=temp.getNatureOfWork() %></td>
							<td><%=temp.getReasonForLeaving() %></td>
							<td>
								<form action="editExperience" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-primary">Edit</button>
								</form>
							</td>
							<td>
								<form onsubmit="return confirm('Do you really want to delete ?')" action="deleteExperience" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-danger">Delete</button>
								</form>
							</td>
						<tr>
						<%} %>
					</thead>
				</table>
				</div>
				
				<%int tExp = details.getTeachingExperience(); %>
				
				<%for(i=teachingExp+1;i<=tExp;i++){ %>
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<form:form method="post" action="processAddExperience" modelAttribute="experience">
					<form:hidden path="id" />
					<input type="hidden" name="role" value="teaching" />
					<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12">Teaching Experience <%=i %></h2>
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
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
				<%} %>
				
				<%int iExp = details.getIndustryExperience(); %>
				
				<%for(i=industryExp+1;i<=iExp;i++){ %>
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<form:form method="post" action="processAddExperience" modelAttribute="experience">
					<form:hidden path="id" />
					<input type="hidden" name="role" value="industry" />
					<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12">Industry Experience <%=i %></h2>
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
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
				<%} %>
				
				<%int rExp = details.getResearchExperience(); %>
				
				<%for(i=researchExp+1;i<=rExp;i++){ %>
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
				<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
				<form:form method="post" action="processAddExperience" modelAttribute="experience">
					<form:hidden path="id" />
					<input type="hidden" name="role" value="research" />
					<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12">Research Experience <%=i %></h2>
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
				<div class="col-lg-3 col-md-3 col-sm-12 col-xs-12"></div>
				<%} %>
				
				<%if((tExp+iExp+rExp)<=experiences.size()){ %>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4">
					<center>
					<a href="${pageContext.request.contextPath}/subjectsTaught"><button class="btn btn-lg btn-primary">Next</button></a>
					</center>
				</div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
				<%} %>
		</div>
	</div>
	
</body>

</html>
