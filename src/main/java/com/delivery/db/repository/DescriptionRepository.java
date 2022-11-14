package com.delivery.db.repository;

import com.delivery.db.entities.Description;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DescriptionRepository extends JpaRepository<Description, Long> {
}