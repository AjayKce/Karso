package kce.karso.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="ep_qualification")
@Data
public class EPQualification {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="candidate_id")
	private int candidateId;
	
	@Column(name="degree")
	private String degree;
	
	@Column(name="class_obtained_percentage")
	private String classObtainedPercentage;
	
	@Column(name="specialization")
	private String specialization;
	
	@Column(name="college_and_university")
	private String collegeAndUniversity;
	
	@Column(name="work_mode")
	private String workMode;
	
	@Column(name="history_of_arrears")
	private String historyOfArrears;
	
	@Column(name="year_of_completion")
	private String yearOfCompletion;
	
}
