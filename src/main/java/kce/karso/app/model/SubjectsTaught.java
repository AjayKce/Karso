package kce.karso.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="subjects_taught")
@Data
public class SubjectsTaught {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="candidate_id")
	private int candidateId;
	
	
	@Column(name="ug_or_pg")
	private String ugOrPg;
	
	@Column(name="subject")
	private String subject;
	
	@Column(name="percentage")
	private String percentage;
}
