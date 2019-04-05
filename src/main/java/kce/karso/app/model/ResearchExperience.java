package kce.karso.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="research_experience")
@Data
public class ResearchExperience {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="candidate_id")
	private int candidateId;
	
	@Column(name="period")
	private String period;
	
	@Column(name="post_designation")
	private String postDesignation;
	
	@Column(name="organization")
	private String organization;
	
	@Column(name="research_title")
	private String researchTitle;
	
	@Column(name="funding_agency")
	private String fundingAgency;
}
