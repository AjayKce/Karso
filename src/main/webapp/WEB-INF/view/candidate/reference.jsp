<%@page import="java.util.*,kce.karso.app.model.*" %>
<html>
<head>
<jsp:include page="../bootstrap.jsp" />
<style>
#submit{
display:none;
}
</style>

<script type="text/javascript">
$(document).ready(function(){
	$("#accept").click(function(){
		$("#submit").toggle(200);
	})
});
</script>

</head>
<%
String candidateId =session.getAttribute("candidateId").toString();
List<Reference> references = (List<Reference>)request.getAttribute("references");
%>
<body>
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>
	
	<div class="container">
	<div class="row">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<h4>References (minimum three References and atleast one should be familiar with your recent work) </h4>
				<table class="table table-responsive table-bordered">
					<thead>
						<th>Name</th>
						<th>Occupation / Position / Designation</th>
						<th>Organization</th>
						<th>Address Line 1</th>
						<th>Address Line 2</th>
						<th>Address Line 3</th>
						<th>City</th>
						<th>Pincode</th>
						<th>Mobile Number</th>
						<th>Email</th>
						<th colspan="2">
							<form action="addReference" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="candidateId" value="<%=candidateId %>">
								<button type="submit" class="btn btn-primary">Add</button>
							</form>
						</th>
						<%for(Reference temp:references){ %>
						<tr>
							<td><%=temp.getName() %></td>
							<td><%=temp.getOccPosDes() %></td>
							<td><%=temp.getOrganization() %></td>
							<td><%=temp.getAddress1() %></td>
							<td><%=temp.getAddress2() %></td>
							<td><%=temp.getAddress3() %></td>
							<td><%=temp.getCity() %></td>
							<td><%=temp.getPincode() %></td>
							<td><%=temp.getMobileNumber() %></td>
							<td><%=temp.getEmail() %></td>
							<td>
								<form action="editReference" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-info">Edit</button>
								</form>
							</td>
							<td>
								<form onsubmit="return confirm('Do you really want to delete ?')" action="deleteReference" method="post" style="padding:0px;margin:0px;border:0px;">
								<input type="hidden" name="id" value="<%=temp.getId() %>">
								<button type="submit" class="btn btn-danger">Delete</button>
								</form>
							</td>
						<tr>
						<%} %>
					</thead>
				</table>
				</div>
				<%if(references.size()>=3){ %>
				<div class="container-fluid">
					<div class="row">
						<div class="col-lg-3 col-sm-3 col-xs-0 col-sm-0"></div>
						<div class="col-lg-6 col-sm-6 col-xs-12 col-sm-12">
							<h4>Declaration : </h4>
							<h6>
						I declare that all the aforesaid information is correct and complete to the best of my knowledge
						and belief and nothing has been concealed / distorted. If I am found to have concealed / distorted any 
						material information, my appointment shall be liable to be summarily terminated without any notice.
							</h6>
							<h5 align="center"><p style="margin:0"><a href="${pageContext.request.contextPath}/">Click Here</a> to Review <br>(or)  </p><input type="checkbox" id="accept"> <label for="accept">accept</label></h5>
							<form  onsubmit="return confirm('Do you confirm to proceed to next step?')" action="setActive" method="post" style="padding:0px;margin:0px;border:0px;">
								<center><button id="submit" type="submit" class="btn btn-primary">Submit</button></center>
							</form>
						</div>
						<div class="col-lg-3 col-sm-3 col-xs-0 col-sm-0"></div>
					</div>
				</div>
				<%} %>
				</div>
				</div>
</body>

</html>
