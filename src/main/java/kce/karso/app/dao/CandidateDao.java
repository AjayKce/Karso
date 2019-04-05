package kce.karso.app.dao;

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

public interface CandidateDao {

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

	KnownLanguage getKnownLanguage(int candidateId, int id);

	void deleteKnownLanguage(KnownLanguage knownLanguage);

	void deleteEPQualification(EPQualification epQualification);

	EPQualification getEPQualification(int candidateId, int id);

	void addEpQualification(EPQualification epQualification);

	int getCountExp(int candidateId, String role);

	void addExperience(Experience experience);

	Experience getExperience(int candidateId, int id);

	void deleteExperience(Experience experience);

}
