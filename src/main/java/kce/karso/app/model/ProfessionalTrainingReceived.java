package kce.karso.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="professional_training_received")
@Data
public class ProfessionalTrainingReceived {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="candidate_id")
	private int candidateId;
	
	@Column(name="year")
	private String year;
	
	@Column(name="training_nature")
	private String trainingNature;
	
	@Column(name="duration")
	private String duration;
	
	@Column(name="organization")
	private String organization;
	
	
	
}
