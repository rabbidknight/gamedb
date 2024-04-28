package com.gamedb.fullstack.backend.repository;

import com.gamedb.fullstack.backend.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {

}
