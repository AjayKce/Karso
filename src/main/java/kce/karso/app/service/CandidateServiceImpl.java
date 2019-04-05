package kce.karso.app.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kce.karso.app.dao.CandidateDao;
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
import kce.karso.app.repository.CandidateDetailsRepo;
import kce.karso.app.repository.ProfessionalBodyMembershipRepo;
import kce.karso.app.repository.ProfessionalTrainingReceivedRepo;
import kce.karso.app.repository.ReferenceRepo;
import kce.karso.app.repository.RelevantInfoRepo;
import kce.karso.app.repository.ResearchExperienceRepo;
import kce.karso.app.repository.SubjectTaughRepo;

@Service
public class CandidateServiceImpl implements CandidateService {

	@Autowired
	CandidateDao candidateDao;
	
	@Autowired
	CandidateDetailsRepo candidateDetailsRepo;
	
	@Autowired
	SubjectTaughRepo subjectTaughtRepo;
	
	@Autowired
	RelevantInfoRepo relevantInfoRepo;
	
	@Autowired
	ResearchExperienceRepo researchExperienceRepo;
	
	@Autowired
	ProfessionalTrainingReceivedRepo professionalTrainingReceivedRepo;
	
	@Autowired
	ProfessionalBodyMembershipRepo professionalBodyMembershipRepo;
	
	@Autowired
	ReferenceRepo referenceRepo;

	@Override
	@Transactional
	public CandidateDetails getCandidateDetails(String aadhar) {
		return candidateDao.getCandidateDetails(aadhar);
	}

	@Override
	@Transactional
	public void saveCustomerDetails(CandidateDetails candidateDetails) {
		candidateDao.saveCustomerDetails(candidateDetails);
	}

	@Override
	@Transactional
	public CandidateDetails getCandidateDetails(int candidateId) {
		return candidateDao.getCandidateDetails(candidateId);
	}

	@Override
	@Transactional
	public List<KnownLanguage> getKnownLanguages(int candidateId) {
		return candidateDao.getKnownLanguages(candidateId);
	}

	@Override
	@Transactional
	public List<EPQualification> getEpQualifications(int candidateId) {
		return candidateDao.getEpQualifications(candidateId);
	}

	@Override
	@Transactional
	public List<Experience> getExperiences(int candidateId) {
		return candidateDao.getExperiences(candidateId);
	}

	@Override
	@Transactional
	public List<SubjectsTaught> getSubjectTaught(int candidateId) {
		return candidateDao.getSubjectTaught(candidateId);
	}

	@Override
	@Transactional
	public List<RelevantInfo> getRelevantInfos(int candidateId) {
		return candidateDao.getRelevantInfos(candidateId);
	}

	@Override
	@Transactional
	public List<ResearchExperience> getResearchExperiences(int candidateId) {
		return candidateDao.getResearchExperiences(candidateId);
	}

	@Override
	@Transactional
	public List<ProfessionalTrainingReceived> getProfessionalTrainingReceived(int candidateId) {
		return candidateDao.getProfessionalTrainingReceived(candidateId);
	}

	@Override
	@Transactional
	public List<ProfessionalBodyMembership> getProfessionalBodyMemberships(int candidateId) {
		return candidateDao.getProfessionalBodyMemberships(candidateId);
	}

	@Override
	@Transactional
	public List<Reference> getReferrences(int candidateId) {
		return candidateDao.getReferrences(candidateId);
	}

	@Override
	@Transactional
	public void addLanguage(KnownLanguage language) {
		candidateDao.addLanguage(language);
	}

	@Override
	@Transactional
	public void deleteSet(String set, String id) {
		candidateDao.deleteSet(set,id);
	}

	@Override
	@Transactional
	public KnownLanguage getKnownLanguages(int candidateId, int id) {
		return candidateDao.getKnownLanguage(candidateId,id);
	}

	@Override
	@Transactional
	public void deleteKnownLanguage(KnownLanguage knownLanguage) {
		candidateDao.deleteKnownLanguage(knownLanguage);
	}

	@Override
	@Transactional
	public void addEpQualification(EPQualification epQualification) {
		candidateDao.addEpQualification(epQualification);
	}

	@Override
	@Transactional
	public EPQualification getEPQualification(int candidateId, int id) {
		return candidateDao.getEPQualification(candidateId,id);
	}

	@Override
	@Transactional
	public void deleteEPQualification(EPQualification epQualification) {
		candidateDao.deleteEPQualification(epQualification);
	}

	@Override
	@Transactional
	public int getCountExp(int candidateId, String role) {
		return candidateDao.getCountExp(candidateId,role);
	}

	@Override
	@Transactional
	public void addExperience(Experience experience) {
		candidateDao.addExperience(experience);
	}

	@Override
	@Transactional
	public Experience getExperience(int candidateId, int id) {
		return candidateDao.getExperience(candidateId,id);
	}

	@Override
	@Transactional
	public void deleteExperience(Experience experience) {
		candidateDao.deleteExperience(experience);
	}

	@Override
	public void addSubjectTaught(SubjectsTaught subject) {
		subjectTaughtRepo.save(subject);
	}

	@Override
	public void deleteSubjectTaught(int id) {
		subjectTaughtRepo.deleteById(id);
	}

	@Override
	public void addRelevantInfo(RelevantInfo info) {
		relevantInfoRepo.save(info);
	}

	@Override
	public RelevantInfo getRelevantInfo(int id) {
		Optional<RelevantInfo> rl = relevantInfoRepo.findById(id);
		return rl.get();
	}

	@Override
	public void deleteRelevantInfo(int id) {
		relevantInfoRepo.deleteById(id);
	}

	@Override
	public void addResearchExperience(ResearchExperience researchExperience) {
		researchExperienceRepo.save(researchExperience);
	}

	@Override
	public ResearchExperience getResearchExperience(int id) {
		Optional<ResearchExperience> res = researchExperienceRepo.findById(id);
		return res.get();
	}

	@Override
	public void deleteResearchExperience(int id) {
		researchExperienceRepo.deleteById(id);
	}

	@Override
	public void addProfessionalTrainingReceived(ProfessionalTrainingReceived training) {
		professionalTrainingReceivedRepo.save(training);
	}

	@Override
	public ProfessionalTrainingReceived getSingleProfessionalTrainingReceived(int id) {
		Optional<ProfessionalTrainingReceived> res = professionalTrainingReceivedRepo.findById(id);
		return res.get();
	}

	@Override
	public void deleteProfessionalTrainingReceived(int id) {
		professionalTrainingReceivedRepo.deleteById(id);
	}

	@Override
	public void addProfessionalBodyMembership(ProfessionalBodyMembership member) {
		professionalBodyMembershipRepo.save(member);
	}

	@Override
	public void deleteProfessionalBodyMembership(int id) {
		professionalBodyMembershipRepo.deleteById(id);
	}

	@Override
	public void addReference(Reference reference) {
		referenceRepo.save(reference);
	}

	@Override
	public Reference getSingleReference(int id) {
		Optional<Reference> res = referenceRepo.findById(id);
		return res.get();
	}

	@Override
	public void deleteReference(int id) {
		referenceRepo.deleteById(id);
	}

	@Override
	public CandidateDetails getCandidateDetail(int id) {
		Optional<CandidateDetails> res = candidateDetailsRepo.findById(id);
		return res.get();
	}

}
