package com.delivery.db.repository;

import com.delivery.db.entities.Order;
import com.delivery.db.entities.User;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface OrderRepository extends JpaRepository<Order, Integer> {
    List<Order> findAllByUser(User user);
}