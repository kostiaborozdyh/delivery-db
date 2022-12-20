package com.delivery.db.repository;

import com.delivery.db.entities.Review;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ReviewRepository extends JpaRepository<Review, Integer> {
    Page<Review> findAll(Pageable pageable);
}