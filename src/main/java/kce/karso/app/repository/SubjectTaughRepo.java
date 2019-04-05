package kce.karso.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kce.karso.app.model.SubjectsTaught;

public interface SubjectTaughRepo extends JpaRepository<SubjectsTaught, Integer> {
}
