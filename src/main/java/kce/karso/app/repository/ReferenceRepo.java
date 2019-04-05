package kce.karso.app.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import kce.karso.app.model.Reference;

public interface ReferenceRepo extends JpaRepository<Reference, Integer> {
}
