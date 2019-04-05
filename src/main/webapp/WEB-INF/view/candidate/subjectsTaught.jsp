<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
</head>
<%
String candidateId =session.getAttribute("candidateId").toString();
List<SubjectsTaught> subjectsTaught = (List<SubjectsTaught>)request.getAttribute("subjectsTaught");
%>
<body>
	
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>
	
	<div class="container">
	<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h2>Subject Taught(only for teaching experience) </h2>
				<table class="table table-justified table-bordered">
					<thead>
						<th>Mention whether PG level or UG Level</th>
						<th>Subject</th>
						<th>Percentage Obtained</th>
						<th>
							<form action="addSubjectTaught" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="candidateId" value="<%=candidateId %>">
								<button type="submit" class="btn btn-primary">Add</button>
							</form>
						</th>
						<%for(SubjectsTaught temp:subjectsTaught){ %>
						<tr>
							<td><%=temp.getUgOrPg() %></td>
							<td><%=temp.getSubject() %></td>
							<td><%=temp.getPercentage() %></td>
							<td>
								<form onsubmit="return confirm('Do you really want to delete ?')" action="deleteSubjectTaught" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-danger">Delete</button>
								</form>
							</td>
						<tr>
						<%} %>
					</thead>
				</table>
				</div>
				<%if(subjectsTaught.size()>0){ %>
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4">
							<form onsubmit="return confirm('Do you confirm to proceed to next step?')" action="relevantInfo" method="post" style="padding:0px;margin:0px;border:0px;">
								<button type="submit" class="btn btn-primary">Next</button>
							</form>
						</div>
						<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4"></div>
						<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4"></div>
					</div>
				</div>
				<%} %>
				</div>
				</div>
</body>

</html>
