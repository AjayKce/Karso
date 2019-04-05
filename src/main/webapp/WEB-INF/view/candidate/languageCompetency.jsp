<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
</head>
<%
String candidateId =session.getAttribute("candidateId").toString();
CandidateDetails details = (CandidateDetails)request.getAttribute("detail");
List<KnownLanguage> knownLanguages = (List<KnownLanguage>)request.getAttribute("knownLanguages");
%>
<body>

	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>
	
	<div class="container">
	<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h2>Language Competency</h2>
				<%if(request.getAttribute("error")!=null){ %>
				<h5 style="color:red;"><%=request.getAttribute("error") %></h5>
				<%} %>
				<table class="table table-justified table-bordered">
					<thead>
						<th>Language</th>
						<th>Read</th>
						<th>Speak</th>
						<th>Write</th>
						<th>
							<form action="addLanguageCompetency" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="candidateId" value="<%=candidateId %>">
								<button type="submit" class="btn btn-primary">Add</button>
							</form>
						</th>
						<%for(KnownLanguage temp:knownLanguages){ %>
						<tr>
							<td><%=temp.getKnownLanguage() %></td>
							<%if(temp.getIsRead().equals("active")){ %>
							<td>known</td>
							<%}else{ %>
							<td>un-known</td>
							<%} %>
							<%if(temp.getIsSpeak().equals("active")){ %>
							<td>known</td>
							<%}else{ %>
							<td>un-known</td>
							<%} %>
							<%if(temp.getIsWrite().equals("active")){ %>
							<td>known</td>
							<%}else{ %>
							<td>un-known</td>
							<%} %>
							<td>
								<form onsubmit="return confirm('Do you really want to delete ?')" action="deleteLanguageCompetency" method="post" style="padding:0px;margin:0px;border:0px;">
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
					<a onclick="return confirm('Are you sure , want to proceed ?')" href="${pageContext.request.contextPath}/epQualification"><button class="btn btn-lg btn-primary">Next</button></a>
					</center>
				</div>
				<div class="col-lg-4 col-md-4 col-xs-4 col-sm-4"></div>
				</div>
				</div>
				</div>
				</div>
</body>

</html>
