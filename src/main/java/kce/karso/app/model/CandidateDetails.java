package kce.karso.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="candidate_details")
@Data
public class CandidateDetails {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="position_applied_for")
	private String positionAppliedFor;
	
	@Column(name="department")
	private String department;
	
	@Column(name="aadhar_number")
	private String aadharNumber;
	
	@Column(name="candidate_name")
	private String candidateName;
	
	@Column(name="date_of_birth")
	private String dateOfBirth;
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="marital_status")
	private String maritalStatus;
	
	@Column(name="educational_qualification")
	private String educationalQualification;
	
	@Column(name="teaching_experience")
	private int teachingExperience;
	
	@Column(name="industry_experience")
	private int industryExperience;
	
	@Column(name="research_experience")
	private int researchExperience;
	
	@Column(name="current_salary_per_month")
	private String currentSalaryPerMonth;
	
	@Column(name="expected_salary_per_month")
	private String expectedSalaryPerMonth;
	
	@Column(name="blood_group")
	private String bloodGroup;
	
	@Column(name="pan_number")
	private String panNumber;
	
	@Column(name="permenent_address1")
	private String permenentAddress1;
	
	@Column(name="permenent_address2")
	private String permenentAddress2;
	
	@Column(name="permenent_address3")
	private String permenentAddress3;
	
	@Column(name="permenent_address_city")
	private String permenentAddressCity;
	
	@Column(name="permenent_address_pincode")
	private String permenentAddressPincode;
	
	@Column(name="current_address1")
	private String currentAddress1;
	
	@Column(name="current_address2")
	private String currentAddress2;
	
	@Column(name="current_address3")
	private String currentAddress3;
	
	@Column(name="current_address_city")
	private String currentAddressCity;
	
	@Column(name="current_address_pincode")
	private String currentAddressPincode;
	
	@Column(name="mobile_number")
	private String mobileNumber;
	
	@Column(name="email")
	private String email;
	
	@Column(name="community")
	private String community;
	
	@Column(name="caste")
	private String caste;
	
	@Column(name="religion")
	private String religion;
	
	@Column(name="international_nop")
	private String internationalNop;
	
	@Column(name="national_nop")
	private String nationalNop;
	
	@Column(name="phd_specialization")
	private String phdSpecialization;
	
	@Column(name="i10_index")
	private String i10Index;
	
	@Column(name="h_index")
	private String hIndex;
	
	@Column(name="nop_web_science")
	private String nopWebScience;
	
	@Column(name="nop_thoms")
	private String nopThoms;
	
	@Column(name="cummulative_factor")
	private String cummulativeFactor;
	
	@Column(name="highest_factor")
	private String highestFactor;
	
	@Column(name="nof_projects_received")
	private String nofProjectsReceived;
	
	@Column(name="additional_qualification")
	private String additionalQualification;

	@Column(name="nop_scie")
	private String nopScie;
	
	@Column(name="status")
	private String status;
	
}
