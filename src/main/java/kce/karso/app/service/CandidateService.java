package kce.karso.app.service;

import java.util.List;

import kce.karso.app.model.CandidateDetails;
import kce.karso.app.model.EPQualification;
import kce.karso.app.model.Experience;
import kce.karso.app.model.KnownLanguage;
import kce.karso.app.model.ProfessionalBodyMembership;
import kce.karso.app.model.ProfessionalTrainingReceived;
import kce.karso.app.model.Reference;
import kce.karso.app.model.RelevantInfo;
import kce.karso.app.model.ResearchExperience;
import kce.karso.app.model.SubjectsTaught;

public interface CandidateService {

	CandidateDetails getCandidateDetails(String aadhar);

	void saveCustomerDetails(CandidateDetails candidateDetails);

	CandidateDetails getCandidateDetails(int candidateId);

	List<KnownLanguage> getKnownLanguages(int candidateId);

	List<EPQualification> getEpQualifications(int candidateId);

	List<Experience> getExperiences(int candidateId);

	List<SubjectsTaught> getSubjectTaught(int candidateId);

	List<RelevantInfo> getRelevantInfos(int candidateId);

	List<ResearchExperience> getResearchExperiences(int candidateId);

	List<ProfessionalTrainingReceived> getProfessionalTrainingReceived(int candidateId);

	List<ProfessionalBodyMembership> getProfessionalBodyMemberships(int candidateId);

	List<Reference> getReferrences(int candidateId);

	void addLanguage(KnownLanguage language);

	void deleteSet(String set, String id);

	KnownLanguage getKnownLanguages(int candidateId, int id);

	void deleteKnownLanguage(KnownLanguage knownLanguage);

	void addEpQualification(EPQualification epQualification);

	EPQualification getEPQualification(int candidateId, int id);

	void deleteEPQualification(EPQualification epQualification);

	int getCountExp(int candidateId, String role);

	void addExperience(Experience experience);

	Experience getExperience(int candidateId, int id);

	void deleteExperience(Experience experience);

	void addSubjectTaught(SubjectsTaught subject);

	void deleteSubjectTaught(int id);

	void addRelevantInfo(RelevantInfo info);

	RelevantInfo getRelevantInfo(int id);

	void deleteRelevantInfo(int id);

	void addResearchExperience(ResearchExperience researchExperience);

	ResearchExperience getResearchExperience(int id);

	void deleteResearchExperience(int id);

	void addProfessionalTrainingReceived(ProfessionalTrainingReceived training);

	ProfessionalTrainingReceived getSingleProfessionalTrainingReceived(int id);

	void deleteProfessionalTrainingReceived(int id);

	void addProfessionalBodyMembership(ProfessionalBodyMembership member);

	void deleteProfessionalBodyMembership(int id);

	void addReference(Reference reference);

	Reference getSingleReference(int id);

	void deleteReference(int id);

	CandidateDetails getCandidateDetail(int cid);

}
