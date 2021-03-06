<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
</head>
<%
String candidateId =session.getAttribute("candidateId").toString();
List<Experience> experiences = (List<Experience>)request.getAttribute("experiences");
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
							<form action="addExperience" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="candidateId" value="<%=candidateId %>">
								<center>
									<button type="submit" class="btn btn-primary">Add</button>
								</center>
							</form>
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
				
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4">
					<center>
					<a onclick="return confirm('Are you sure , want to proceed ?')" href="${pageContext.request.contextPath}/subjectsTaught"><button class="btn btn-lg btn-primary">Next</button></a>
					</center>
				</div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
		</div>
	</div>
	
</body>

</html>
