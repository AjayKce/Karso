<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
</head>
<%
String candidateId =session.getAttribute("candidateId").toString();
List<RelevantInfo> infos = (List<RelevantInfo>)request.getAttribute("infos");
%>
<body>

	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>

	<div class="container">
	<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h2>Relevant Information </h2>
				<table class="table table-justified table-bordered">
					<thead>
						<th>Relevant Information / Acheivements</th>
						<th colspan="2">
							<center>
							<form action="addRelevantInfo" method="post" style="padding:0px;margin:0px;border:0px;">
								<button type="submit" class="btn btn-primary">Add</button>
							</form>
							</center>
						</th>
						<%for(RelevantInfo temp:infos){ %>
						<tr>
							<td><%=temp.getInfo() %></td>
							<td>
							<center>
								<form action="editRelevantInfo" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-info">Edit</button>
								</form>
							</center>
							</td>
							<td>
							<center>
								<form onsubmit="return confirm('Do you really want to delete ?')" action="deleteRelevantInfo" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-danger">Delete</button>
								</form>
							</center>
							</td>
						<tr>
						<%} %>
					</thead>
				</table>
				</div>
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4">
							<form onsubmit="return confirm('Do you confirm to proceed to next step?')" action="researchExperience" method="post" style="padding:0px;margin:0px;border:0px;">
								<button type="submit" class="btn btn-primary">Next</button>
							</form>
						</div>
						<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4"></div>
						<div class="col-lg-4 col-sm-4 col-xs-4 col-sm-4"></div>
					</div>
				</div>
				</div>
				</div>
</body>

</html>
