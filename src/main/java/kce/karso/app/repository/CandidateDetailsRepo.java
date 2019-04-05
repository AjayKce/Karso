package kce.karso.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kce.karso.app.model.CandidateDetails;

public interface CandidateDetailsRepo extends JpaRepository<CandidateDetails, Integer> {

}
