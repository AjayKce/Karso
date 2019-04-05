package kce.karso.app.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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

@Repository
public class CandidateDaoImpl implements CandidateDao {

	@Autowired
	EntityManager manager;

	@Override
	public CandidateDetails getCandidateDetails(String aadhar) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from CandidateDetails c where c.aadharNumber='"+aadhar+"'");
		List<CandidateDetails> candidateDetails = query.list();
		if(candidateDetails.size()!=0) {
			return candidateDetails.get(0);
		}
		else {
		return new CandidateDetails();
		}
	}

	@Override
	public void saveCustomerDetails(CandidateDetails candidateDetails) {
		Session session = manager.unwrap(Session.class);
		session.saveOrUpdate(candidateDetails);
	}

	@Override
	public CandidateDetails getCandidateDetails(int candidateId) {
		Session session = manager.unwrap(Session.class);
		CandidateDetails candidateDetail = session.get(CandidateDetails.class, candidateId);
		return candidateDetail;
	}

	@Override
	public List<KnownLanguage> getKnownLanguages(int candidateId) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from KnownLanguage c where c.candidateId='"+candidateId+"'");
		List<KnownLanguage> elements = query.list();
		return elements;
	}

	@Override
	public List<EPQualification> getEpQualifications(int candidateId) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from EPQualification c where c.candidateId='"+candidateId+"'");
		List<EPQualification> elements = query.list();
		return elements;
	}

	@Override
	public List<Experience> getExperiences(int candidateId) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from Experience c where c.candidateId='"+candidateId+"'");
		List<Experience> elements = query.list();
		return elements;
	}

	@Override
	public List<SubjectsTaught> getSubjectTaught(int candidateId) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from SubjectsTaught c where c.candidateId='"+candidateId+"'");
		List<SubjectsTaught> elements = query.list();
		return elements;
	}

	@Override
	public List<RelevantInfo> getRelevantInfos(int candidateId) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from RelevantInfo c where c.candidateId='"+candidateId+"'");
		List<RelevantInfo> elements = query.list();
		return elements;
	}

	@Override
	public List<ResearchExperience> getResearchExperiences(int candidateId) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from ResearchExperience c where c.candidateId='"+candidateId+"'");
		List<ResearchExperience> elements = query.list();
		return elements;
	}

	@Override
	public List<ProfessionalTrainingReceived> getProfessionalTrainingReceived(int candidateId) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from ProfessionalTrainingReceived c where c.candidateId='"+candidateId+"'");
		List<ProfessionalTrainingReceived> elements = query.list();
		return elements;
	}

	@Override
	public List<ProfessionalBodyMembership> getProfessionalBodyMemberships(int candidateId) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from ProfessionalBodyMembership c where c.candidateId='"+candidateId+"'");
		List<ProfessionalBodyMembership> elements = query.list();
		return elements;
	}

	@Override
	public List<Reference> getReferrences(int candidateId) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from Reference c where c.candidateId='"+candidateId+"'");
		List<Reference> elements = query.list();
		return elements;
	}

	@Override
	public void addLanguage(KnownLanguage language) {
		Session session = manager.unwrap(Session.class);
		session.saveOrUpdate(language);
	}

	@Override
	public void deleteSet(String set, String id) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("delete from "+set+" c where c.id='"+id+"'");
		query.executeUpdate();
	}

	@Override
	public KnownLanguage getKnownLanguage(int candidateId, int id) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from KnownLanguage k where k.id='"+id+"' and k.candidateId='"+candidateId+"'");
		KnownLanguage language = (KnownLanguage)query.getSingleResult();
		return language;
	}

	@Override
	public void deleteKnownLanguage(KnownLanguage knownLanguage) {
		Session session = manager.unwrap(Session.class);
		session.delete(knownLanguage);
	}

	@Override
	public void deleteEPQualification(EPQualification epQualification) {
		Session session = manager.unwrap(Session.class);
		session.delete(epQualification);
	}

	@Override
	public EPQualification getEPQualification(int candidateId, int id) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from EPQualification k where k.id='"+id+"' and k.candidateId='"+candidateId+"'");
		EPQualification epQualification = (EPQualification)query.getSingleResult();
		return epQualification;
	}

	@Override
	public void addEpQualification(EPQualification epQualification) {
		Session session = manager.unwrap(Session.class);
		session.saveOrUpdate(epQualification);
	}

	@Override
	public int getCountExp(int candidateId, String role) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from Experience k where k.role='"+role+"' and k.candidateId='"+candidateId+"'");
		List<Experience> exp = query.list();
		return exp.size();
	}

	@Override
	public void addExperience(Experience experience) {
		Session session = manager.unwrap(Session.class);
		session.saveOrUpdate(experience);
	}

	@Override
	public Experience getExperience(int candidateId, int id) {
		Session session = manager.unwrap(Session.class);
		Query query = session.createQuery("from Experience k where k.id='"+id+"' and k.candidateId='"+candidateId+"'");
		Experience experience = (Experience)query.getSingleResult();
		return experience;
	}

	@Override
	public void deleteExperience(Experience experience) {
		Session session = manager.unwrap(Session.class);
		session.delete(experience);
	}
	
}
