package com.delivery.db.repository;

import com.delivery.db.entities.Role;
import com.delivery.db.entities.User;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<User, Integer> {
    Optional<User> findByLogin(String login);
    List<User> findByRoleIsNot(Role role, Pageable pageable);
    Optional<User> findById(Integer id);
    @Modifying
    void deleteUserById(Integer id);
}
