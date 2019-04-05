package kce.karso.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="known_language")
@Data
public class KnownLanguage {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="candidate_id")
	private int candidateId;
	
	@Column(name="known_language")
	private String knownLanguage;
	
	@Column(name="is_speak")
	private String isSpeak;
	
	@Column(name="is_write")
	private String isWrite;
	
	@Column(name="is_read")
	private String isRead;
	
	
}
