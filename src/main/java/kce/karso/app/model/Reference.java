package kce.karso.app.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.Data;

@Entity
@Table(name="reference")
@Data
public class Reference {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@Column(name="candidate_id")
	private int candidateId;
	
	@Column(name="name")
	private String name;
	
	@Column(name="occ_pos_des")
	private String OccPosDes;
	
	@Column(name="organization")
	private String organization;
	
	@Column(name="address1")
	private String Address1;
	
	@Column(name="address2")
	private String Address2;
	
	@Column(name="address3")
	private String Address3;
	
	@Column(name="city")
	private String city;
	
	@Column(name="pincode")
	private String pincode;
	
	@Column(name="mobile_number")
	private String mobileNumber;
	
	@Column(name="email")
	private String email;
}
