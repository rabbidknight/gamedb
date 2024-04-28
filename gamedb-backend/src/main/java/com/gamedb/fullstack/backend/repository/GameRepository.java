package com.gamedb.fullstack.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gamedb.fullstack.backend.model.Game;

@Repository
public interface GameRepository extends JpaRepository<Game, Integer>{

}
