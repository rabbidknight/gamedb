package com.gamedb.fullstack.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gamedb.fullstack.backend.security.User;
import java.util.List;
import java.util.Optional;


public interface UserRepository extends JpaRepository<User, Integer> {

    Optional<User> findByEmail(String email);
}
