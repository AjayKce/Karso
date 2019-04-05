package kce.karso.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="experience")
@Data
public class Experience {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="candidate_id")
	private int candidateId;
	
	@Column(name="period")
	private String period;
	
	@Column(name="post_and_designation")
	private String postAndDesignation;
	
	@Column(name="organization_name")
	private String organizationName;
	
	@Column(name="nature_of_work")
	private String natureOfWork;
	
	@Column(name="reason_for_leaving")
	private String reasonForLeaving;
	
	@Column(name="role")
	private String role;
	
}
