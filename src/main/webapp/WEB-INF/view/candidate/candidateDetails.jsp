<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>karso</title>
<jsp:include page="../bootstrap.jsp" />
</head>
<body>
	<nav class="navbar fixed-top navbar-light bg-light" style="box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;">
  		<a class="navbar-brand" href="#">KARSO</a>
	</nav>
	
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<form:form method="post" action="processDetails" modelAttribute="detail">
					<form:hidden path="id" />
					<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12">Personal Particulars</h2>
					<div class="row" style="background-color:#ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="positionAppliedFor">Position Applied For :</label>
							<form:input cssClass="form-control" required="required" path="positionAppliedFor"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="department">Department :</label>
							<form:input cssClass="form-control" required="required" path="department"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="aadharNumber">Aadhar Number:</label>
							<form:input cssClass="form-control" required="required" path="aadharNumber"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="candidateName">Name of the Candidate :</label>
							<form:input cssClass="form-control" required="required" path="candidateName"/>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="dateOfBirth">Date of Birth :</label>
							<form:input cssClass="form-control" required="required" path="dateOfBirth" placeholder="DD-MM-YYYY"/>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="gender">Gender :</label>
							<form:select cssClass="form-control" required="required" path="gender">
								<form:option value="MALE">MALE</form:option>
								<form:option value="FEMALE">FEMALE</form:option>
								<form:option value="TRANSGENDER">TRANSGENDER</form:option>
							</form:select>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="maritalStatus">Marital Status :</label>
							<form:select cssClass="form-control" required="required" path="maritalStatus">
								<form:option value="SINGLE">SINGLE</form:option>
								<form:option value="MARRIED">MARRIED</form:option>
								<form:option value="SEPERATED">SEPERATED</form:option>
							</form:select>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="educationalQualification">Educational Qualification :</label>
							<form:input cssClass="form-control" required="required" path="educationalQualification"/>
							<br>
						</div>
						</div>
						<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br>Experience In Years</h2>
						<div class="row" style="background-color:#ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
    					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="teachingExperience">Teaching Experience :</label>
							<form:input cssClass="form-control" required="required" path="teachingExperience"/>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="industryExperience">Industry Experience</label>
							<form:input cssClass="form-control" required="required" path="industryExperience"/>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="researchExperience">Research Experience</label>
							<form:input cssClass="form-control" required="required" path="researchExperience"/>
							<br>
						</div>
						</div>
						<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br>Salary Details Consolidated</h2>
						<div class="row" style="background-color: #ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
    					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
    					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="currentSalaryPerMonth">Current Salary / Month :</label>
							<form:input cssClass="form-control" required="required" path="currentSalaryPerMonth"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="expectedSalaryPerMonth">Expected Salary / Month :</label>
							<form:input cssClass="form-control" required="required" path="expectedSalaryPerMonth"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="bloodGroup">BloodGroup :</label>
							<form:select cssClass="form-control" required="required" path="bloodGroup">
								<form:option value="A+">A+</form:option>
								<form:option value="A-">A-</form:option>
								<form:option value="B+">B+</form:option>
								<form:option value="B-">B-</form:option>
								<form:option value="A1B+">A1B+</form:option>
								<form:option value="A1B-">A1B-</form:option>
								<form:option value="O+">O+</form:option>
								<form:option value="O-">O-</form:option>
							</form:select>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="panNumber">Pan Number :</label>
							<form:input cssClass="form-control" required="required" path="panNumber"/>
							<br>
						</div>
						</div>
						<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br>Permenent Address</h2>
						<div class="row" style="background-color: #ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
    					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
    					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="permenentAddress1">Address Line 1 :</label>
							<form:input cssClass="form-control" required="required" path="permenentAddress1"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="permenentAddress2">Address Line 2 :</label>
							<form:input cssClass="form-control" required="required" path="permenentAddress2"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="permenentAddress3">Address Line 3 :</label>
							<form:input cssClass="form-control" required="required" path="permenentAddress3"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="permenentAddressCity">City :</label>
							<form:input cssClass="form-control" required="required" path="permenentAddressCity"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="permenentAddressPincode">Pincode :</label>
							<form:input cssClass="form-control" required="required" path="permenentAddressPincode"/>
							<br>
						</div>
						</div>
						<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br>Address For Communication</h2>
						<div class="row" style="background-color: #ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
    					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
							<input id="same" type="checkbox"> 
							<label for="same"> Same as Above</label>
						</div>
    					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="currentAddress1">Address Line 1 :</label>
							<form:input cssClass="form-control" required="required" path="currentAddress1"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="currentAddress2">Address Line 2 :</label>
							<form:input cssClass="form-control" required="required" path="currentAddress2"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="currentAddress3">Address Line 3 :</label>
							<form:input cssClass="form-control" required="required" path="currentAddress3"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="currentAddressCity">City :</label>
							<form:input cssClass="form-control" required="required" path="currentAddressCity"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="currentAddressPincode">Pincode :</label>
							<form:input cssClass="form-control" required="required" path="currentAddressPincode"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="mobileNumber">Mobile Number :</label>
							<form:input cssClass="form-control" required="required" path="mobileNumber"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="email">Email :</label>
							<form:input cssClass="form-control" required="required" path="email"/>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<div class="row">
							<label class="col-lg-12 col-md-12 col-sm-12 col-xs-12" for="community">Community :</label>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><form:radiobutton checked="checked" path="community" value="OC" /> OC</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><form:radiobutton  path="community" value="FC" /> FC</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><form:radiobutton  path="community" value="BC" /> BC</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><form:radiobutton  path="community" value="MBC" /> MBC</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><form:radiobutton  path="community" value="SC" /> SC</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><form:radiobutton  path="community" value="ST" /> ST</div>
							<div class="col-lg-3 col-md-3 col-sm-3 col-xs-3"><form:radiobutton  path="community" value="DNC" /> DNC</div>
							</div>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="caste">Caste :</label>
							<form:input cssClass="form-control" required="required" path="caste"/>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="religion">Religion :</label>
							<form:input cssClass="form-control" required="required" path="religion"/>
							<br>
						</div>
						</div>
						<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br>No of Papers Published</h2>
						<div class="row" style="background-color: #ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
    					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
    					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="internationalNop">International :</label>
							<form:input cssClass="form-control" required="required" path="internationalNop"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="nationalNop">National :</label>
							<form:input cssClass="form-control" required="required" path="nationalNop"/>
						</div>
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<label for="phdSpecialization">PHD Specialization :</label>
							<form:input cssClass="form-control" required="required" path="phdSpecialization"/>
							<br>
						</div>
						</div>
						<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br>No of Google Scholar citation</h2>
						<div class="row" style="background-color: #ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
    					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
    					<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="i10Index">I10-Index :</label>
							<form:input cssClass="form-control" required="required" path="i10Index"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="hIndex">H-Index :</label>
							<form:input cssClass="form-control" required="required" path="hIndex"/>
							<br>
						</div>
						</div>
						<h2 class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br>No of Scopus Publications</h2>
						<div class="row" style="background-color: #ffeaa7;box-shadow:3px 4px 5px #b2bec3,-3px 4px 5px #b2bec3;" >
    					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
    					<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="nopWebScience">No of Publications in Web Of Science :</label>
							<form:input cssClass="form-control" required="required" path="nopWebScience"/>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="nopScie">No of Publications in SCIE :</label>
							<form:input cssClass="form-control" required="required" path="nopScie"/>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
							<label for="nopThoms">No of Publications in Thoms Reuters :</label>
							<form:input cssClass="form-control" required="required" path="nopThoms"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="cummulativeFactor">Cummulative Impact Factor :</label>
							<form:input cssClass="form-control" required="required" path="cummulativeFactor"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="highestFactor">Highest Impact Factor :</label>
							<form:input cssClass="form-control" required="required" path="highestFactor"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="nofProjectsReceived">No of Funded Projects Received :</label>
							<form:input cssClass="form-control" required="required" path="nofProjectsReceived"/>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<label for="additionalQualification">Additional Qualification (SLET / NET) :</label>
							<form:input cssClass="form-control" required="required" path="additionalQualification"/>
							<br>
						</div>
						</div>
						<div class="row" >
    					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><br></div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
							<center><button type="submit" class="btn btn-lg btn-success">save</button></center>
						</div>
						<div class="col-lg-4 col-md-4 col-sm-4 col-xs-4"></div>
						</div>
					</div>
				</form:form>
			</div>
		</div>
	</div>
	<script>
	$(document).ready(function(){
		$('#same').click(function(){
			 if($('#same').prop("checked") == true){
			 $('#currentAddress1').val($('#permenentAddress1').val());
			 $('#currentAddress2').val($('#permenentAddress2').val());
			 $('#currentAddress3').val($('#permenentAddress3').val());
			 $('#currentAddressCity').val($('#permenentAddressCity').val());
			 $('#currentAddressPincode').val($('#permenentAddressPincode').val());
			 }
			 else{
				 $('#currentAddress1').val("");
				 $('#currentAddress2').val("");
				 $('#currentAddress3').val("");
				 $('#currentAddressCity').val("");
				 $('#currentAddressPincode').val("");
			 }
		});
	});
	</script>
</body>
</html>