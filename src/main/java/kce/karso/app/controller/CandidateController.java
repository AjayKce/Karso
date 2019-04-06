package kce.karso.app.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
import kce.karso.app.service.CandidateService;

@Controller
public class CandidateController {
	
	@Autowired
	HttpSession session;
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpServletResponse response;
	
	@Autowired
	CandidateService candidateService;

	@RequestMapping("/")
	public String home(Model theModel) {
		if(session.getAttribute("candidateId")!=null) {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			CandidateDetails candidateDetails = candidateService.getCandidateDetails(candidateId);
			theModel.addAttribute("detail",candidateDetails);
			return "candidate/candidateDetails";
		}
		return "index";
	}
	
	@RequestMapping("/details")
	public String details(Model theModel) {
		String aadhar = request.getParameter("aadhar");
		CandidateDetails candidateDetails = candidateService.getCandidateDetails(aadhar);
		if(candidateDetails.getId()>0) {
			session.setAttribute("candidateId", candidateDetails.getId());
			return "redirect:/";
		}
		candidateDetails.setAadharNumber(aadhar);
		theModel.addAttribute("detail",candidateDetails);
		return "candidate/candidateDetails";
	}
	
	
	
	@RequestMapping("/processDetails")
	public String processDetails(@ModelAttribute("detail")CandidateDetails candidateDetails) {
		candidateDetails.setStatus("INACTIVE");
		candidateService.saveCustomerDetails(candidateDetails);
		CandidateDetails candidate = candidateService.getCandidateDetails(candidateDetails.getAadharNumber());
		session.setAttribute("candidateId", candidate.getId());
		return "redirect:/languageCompetency";
	}
	
	@RequestMapping("/languageCompetency")
	public String languageCompetency(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			List<KnownLanguage> knownLanguages = candidateService.getKnownLanguages(candidateId);
			theModel.addAttribute("knownLanguages",knownLanguages);
			return "candidate/languageCompetency";
		}
	}
	
	@RequestMapping("/addLanguageCompetency")
	public String addLanguageCompetency(Model theModel) {
		String candidateId = request.getParameter("candidateId");
		KnownLanguage knownLanguage = new KnownLanguage();
		theModel.addAttribute("language",knownLanguage);
		session.setAttribute("candidateId", candidateId);
		return "candidate/addLanguageCompetency";
	}
	
	@PostMapping("/processAddLanguageCompetency")
	public String processAddLanguageCompetency(@ModelAttribute("language")KnownLanguage language) {
		int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
		language.setCandidateId(candidateId);
		if(language.getIsRead()==null) {
			language.setIsRead("inactive");
		}
		if(language.getIsSpeak()==null) {
			language.setIsSpeak("inactive");
		}
		if(language.getIsWrite()==null) {
			language.setIsWrite("inactive");
		}
		candidateService.addLanguage(language);
		return "redirect:/languageCompetency";
	}
	
	@RequestMapping("/deleteLanguageCompetency")
	public String deleteLanguageCompetency() {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			int id = Integer.parseInt(request.getParameter("id"));
			KnownLanguage knownLanguage = candidateService.getKnownLanguages(candidateId,id);
			candidateService.deleteKnownLanguage(knownLanguage);
			return "redirect:/languageCompetency";
		}
	}
	
	@RequestMapping("/epQualification")
	public String epQualification(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			List<KnownLanguage> knownLanguages = candidateService.getKnownLanguages(candidateId);
			if(knownLanguages.size()==0) {
				request.setAttribute("error","Should contain atleast one language");
				theModel.addAttribute("knownLanguages",knownLanguages);
				return "candidate/languageCompetency";
			}
			else {
			List<EPQualification> epQualifications = candidateService.getEpQualifications(candidateId);
			theModel.addAttribute("epQualifications",epQualifications);
			return "candidate/epQualification";
			}
		}
	}
	
	@RequestMapping("/addEpQualification")
	public String addEpQualification(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			EPQualification epQualification = new EPQualification();
			theModel.addAttribute("epQualification",epQualification);
			return "candidate/addEpQualification";
		}
	}
	
	@PostMapping("/processAddEpQualification")
	public String processAddEpQualification(@ModelAttribute("epQualification")EPQualification epQualification) {
		int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
		epQualification.setCandidateId(candidateId);
		candidateService.addEpQualification(epQualification);
		return "redirect:/epQualification";
	}
	
	@RequestMapping("/editEpQualification")
	public String editEpQualification(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			int id = Integer.parseInt(request.getParameter("id"));
			EPQualification epQualification = candidateService.getEPQualification(candidateId,id);
			theModel.addAttribute("epQualification",epQualification);
			return "candidate/addEpQualification";
		}
	}
	
	@RequestMapping("/deleteEpQualification")
	public String deleteEpQualification() {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			int id = Integer.parseInt(request.getParameter("id"));
			EPQualification epQualification = candidateService.getEPQualification(candidateId,id);
			candidateService.deleteEPQualification(epQualification);
			return "redirect:/epQualification";
		}
	}
	
	@RequestMapping("/experience")
	public String experience(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			List<EPQualification> epQualifications = candidateService.getEpQualifications(candidateId);
			if(epQualifications.size()==0) {
				request.setAttribute("error","Should contain atleast one Qualification");
				theModel.addAttribute("epQualifications",epQualifications);
				return "candidate/epQualification";
			}
			else {
			List<Experience> experiences = candidateService.getExperiences(candidateId);
			theModel.addAttribute("experiences",experiences);
			return "candidate/experience";
			}
		}
	}
	
	@PostMapping("/addExperience")
	public String addExperience(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			Experience experience = new Experience();
			theModel.addAttribute("experience",experience);
			return "candidate/addExperience";
		}
	}
	
	@PostMapping("/processAddExperience")
	public String processAddExperience(@ModelAttribute("experience")Experience experience) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			experience.setCandidateId(candidateId);
			candidateService.addExperience(experience);
			return "redirect:/experience";
		}
	}
	
	@RequestMapping("/editExperience")
	public String editExperience(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			int id = Integer.parseInt(request.getParameter("id"));
			Experience experience = candidateService.getExperience(candidateId,id);
			theModel.addAttribute("experience",experience);
			return "candidate/addExperience";
		}
	}
	
	@RequestMapping("/deleteExperience")
	public String deleteExperience() {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			int id = Integer.parseInt(request.getParameter("id"));
			Experience experience = candidateService.getExperience(candidateId,id);
			candidateService.deleteExperience(experience);
			return "redirect:/experience";
		}
	}
	
	@RequestMapping("/subjectsTaught")
	public String subjectsTaught(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId = Integer.parseInt(session.getAttribute("candidateId").toString());
			CandidateDetails candidateDetails = candidateService.getCandidateDetails(candidateId);
			List<Experience> experiences = candidateService.getExperiences(candidateId);
				if(candidateDetails.getTeachingExperience()>0) {
					List<SubjectsTaught> subjectsTaught = candidateService.getSubjectTaught(candidateId);
					theModel.addAttribute("subjectsTaught",subjectsTaught);
					return "candidate/subjectsTaught";
				}
				else {
					return "redirect:/relevantInfo";
				}
			}
		}
	
	@RequestMapping("/addSubjectTaught")
	public String addSubjectTaught(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			SubjectsTaught subjectTaught = new SubjectsTaught();
			theModel.addAttribute("subjectTaught",subjectTaught);
			return "candidate/addSubjectTaughtForm";
		}
	}
	
	@PostMapping("/processSubjectTaughtForm")
	public String processSubjectTaughtForm(@ModelAttribute("subjectTaught")SubjectsTaught sub) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		int cid = Integer.parseInt(session.getAttribute("candidateId").toString());
		sub.setCandidateId(cid);
		candidateService.addSubjectTaught(sub);
		return "redirect:/subjectsTaught";
		}
	}
	
	@PostMapping("/deleteSubjectTaught")
	public String deleteSubjectTaught(@RequestParam("id")int id) {
		candidateService.deleteSubjectTaught(id);
		return "redirect:/subjectsTaught";
	}
	
	@RequestMapping("/relevantInfo")
	public String relevantInfo(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		int cid = Integer.parseInt(session.getAttribute("candidateId").toString());
		List<RelevantInfo> relevantInfos = candidateService.getRelevantInfos(cid);
		theModel.addAttribute("infos",relevantInfos);
		return "candidate/relevantInfo";
		}
	}
	
	@PostMapping("/addRelevantInfo")
	public String addRelevantInfo(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		RelevantInfo info = new RelevantInfo();
		theModel.addAttribute("relevantInfo",info);
		return "candidate/addRelevantInfo";
		}
	}
	
	@PostMapping("/processRelevantForm")
	public String processRelevantForm(@ModelAttribute("relevantInfo")RelevantInfo info) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		int cid = Integer.parseInt(session.getAttribute("candidateId").toString());
		info.setCandidateId(cid);
		candidateService.addRelevantInfo(info);
		return "redirect:/relevantInfo";
		}
	}
	
	@PostMapping("/editRelevantInfo")
	public String editRelevantInfo(Model theModel,@RequestParam("id")int id) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		RelevantInfo info = candidateService.getRelevantInfo(id);
		theModel.addAttribute("relevantInfo",info);
		return "candidate/addRelevantInfo";
		}
	}
	
	@PostMapping("/deleteRelevantInfo")
	public String deleteRelevantInfo(@RequestParam("id")int id) {
		candidateService.deleteRelevantInfo(id);
		return "redirect:/relevantInfo";
	}
	
	@RequestMapping("/researchExperience")
	public String researchExperience(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId=Integer.parseInt(session.getAttribute("candidateId").toString());
			CandidateDetails candidateDetails = candidateService.getCandidateDetails(candidateId);
			List<ResearchExperience> researchExperiences = candidateService.getResearchExperiences(candidateId);
			theModel.addAttribute("researchExperiences",researchExperiences);
			theModel.addAttribute("researchExperience",new ResearchExperience());
			theModel.addAttribute("details",candidateDetails);
			return "candidate/researchExperience";
		}
	}
	
	@PostMapping("/addResearchExperience")
	public String addResearchExperience(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		ResearchExperience researchExperience = new ResearchExperience();
		theModel.addAttribute("researchExperience",researchExperience);
		return "candidate/addResearchExperience";
		}
	}
	
	@PostMapping("/processAddResearchExperience")
	public String processAddResearchExperience(@ModelAttribute("researchExperience")ResearchExperience researchExperience) {
	if(session.getAttribute("candidateId")==null) {
		return "redirect:/";
	}
	else {
	int cid = Integer.parseInt(session.getAttribute("candidateId").toString());
	researchExperience.setCandidateId(cid);
	candidateService.addResearchExperience(researchExperience);
	return "redirect:/researchExperience";
	}
	}
	
	@PostMapping("/editResearchExperience")
	public String editResearchExperience(Model theModel,@RequestParam("id")int id) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		ResearchExperience researchExperience = candidateService.getResearchExperience(id);
		theModel.addAttribute("researchExperience",researchExperience);
		return "candidate/addResearchExperience";
		}
	}
	
	@PostMapping("/deleteResearchExperience")
	public String deleteResearchExperience(@RequestParam("id")int id) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		candidateService.deleteResearchExperience(id);
		return "redirect:/researchExperience";
		}
	}
	
	@RequestMapping("/professionalTrainingReceived")
	public String professionalTrainingReceived(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId=Integer.parseInt(session.getAttribute("candidateId").toString());
			List<ProfessionalTrainingReceived> trainings = candidateService.getProfessionalTrainingReceived(candidateId);
			theModel.addAttribute("trainings",trainings);
			return "candidate/professionalTrainingReceived";
		}
	}
	
	@PostMapping("/addProfessionalTrainingReceived")
	public String addProfessionalTrainingReceived(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		ProfessionalTrainingReceived training = new ProfessionalTrainingReceived();
		theModel.addAttribute("training",training);
		return "candidate/addProfessionalTrainingReceived";
		}
	}
	
	@PostMapping("/processAddProfessionalTrainingReceived")
	public String processAddProfessionalTrainingReceived(@ModelAttribute("training")ProfessionalTrainingReceived training) {
	if(session.getAttribute("candidateId")==null) {
		return "redirect:/";
	}
	else {
	int cid = Integer.parseInt(session.getAttribute("candidateId").toString());
	training.setCandidateId(cid);
	candidateService.addProfessionalTrainingReceived(training);
	return "redirect:/professionalTrainingReceived";
	}
	}
	
	@PostMapping("/editProfessionalTrainingReceived")
	public String editProfessionalTrainingReceived(Model theModel,@RequestParam("id")int id) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			ProfessionalTrainingReceived training = candidateService.getSingleProfessionalTrainingReceived(id);
			theModel.addAttribute("training",training);
			return "candidate/addProfessionalTrainingReceived";
		}
	}
	
	@PostMapping("/deleteProfessionalTrainingReceived")
	public String deleteProfessionalTrainingReceived(@RequestParam("id")int id) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		candidateService.deleteProfessionalTrainingReceived(id);
		return "redirect:/professionalTrainingReceived";
		}
	}
	
	@RequestMapping("/professionalBodyMembership")
	public String professionalBodyMembership(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId=Integer.parseInt(session.getAttribute("candidateId").toString());
			List<ProfessionalBodyMembership> memberships = candidateService.getProfessionalBodyMemberships(candidateId);
			theModel.addAttribute("memberships",memberships);
			return "candidate/professionalBodyMembership";
		}
	}
	
	@PostMapping("/addProfessionalBodyMembership")
	public String addProfessionalBodyMembership(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		ProfessionalBodyMembership member = new ProfessionalBodyMembership();
		theModel.addAttribute("member",member);
		return "candidate/addProfessionalBodyMembership";
		}
	}
	
	@PostMapping("/processAddProfessionalBodyMembership")
	public String processAddProfessionalBodyMembership(@ModelAttribute("member")ProfessionalBodyMembership member) {
	if(session.getAttribute("candidateId")==null) {
		return "redirect:/";
	}
	else {
	int cid = Integer.parseInt(session.getAttribute("candidateId").toString());
	member.setCandidateId(cid);
	candidateService.addProfessionalBodyMembership(member);
	return "redirect:/professionalBodyMembership";
	}
	}
	
	
	@PostMapping("/deleteProfessionalBodyMembership")
	public String deleteProfessionalBodyMembership(@RequestParam("id")int id) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		candidateService.deleteProfessionalBodyMembership(id);
		return "redirect:/professionalBodyMembership";
		}
	}
	
	@RequestMapping("/reference")
	public String Reference(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			int candidateId=Integer.parseInt(session.getAttribute("candidateId").toString());
			List<Reference> references = candidateService.getReferrences(candidateId);
			theModel.addAttribute("references",references);
			return "candidate/reference";
		}
	}
	
	@PostMapping("/addReference")
	public String addReference(Model theModel) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		Reference reference = new Reference();
		theModel.addAttribute("reference",reference);
		return "candidate/addReference";
		}
	}
	
	@PostMapping("/processAddReference")
	public String processAddReference(@ModelAttribute("reference")Reference reference) {
	if(session.getAttribute("candidateId")==null) {
		return "redirect:/";
	}
	else {
	int cid = Integer.parseInt(session.getAttribute("candidateId").toString());
	reference.setCandidateId(cid);
	candidateService.addReference(reference);
	return "redirect:/reference";
	}
	}
	
	@PostMapping("/editReference")
	public String editReference(Model theModel,@RequestParam("id")int id) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
			Reference reference = candidateService.getSingleReference(id);
			theModel.addAttribute("reference",reference);
			return "candidate/addReference";
		}
	}
	
	@PostMapping("/deleteReference")
	public String deleteReference(@RequestParam("id")int id) {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		candidateService.deleteReference(id);
		return "redirect:/reference";
		}
	}
	
	@PostMapping("/setActive")
	@ResponseBody
	public String setActive() {
		if(session.getAttribute("candidateId")==null) {
			return "redirect:/";
		}
		else {
		int cid = Integer.parseInt(session.getAttribute("candidateId").toString());
		CandidateDetails candidateDetails = candidateService.getCandidateDetail(cid);
		candidateDetails.setStatus("ACTIVE");
		candidateService.saveCustomerDetails(candidateDetails);
		return "<h1>Successfully Submitted</h1>";
		}
	}
}
