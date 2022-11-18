package com.delivery.db.repository;

import com.delivery.db.entities.Road;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoadRepository extends JpaRepository<Road, Integer> {
}