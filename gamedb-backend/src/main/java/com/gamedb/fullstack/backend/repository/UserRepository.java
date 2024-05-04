package com.gamedb.fullstack.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gamedb.fullstack.backend.repository.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

}
