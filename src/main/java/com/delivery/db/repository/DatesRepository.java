package com.delivery.db.repository;

import com.delivery.db.entities.Dates;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DatesRepository extends JpaRepository<Dates, Long> {
}
