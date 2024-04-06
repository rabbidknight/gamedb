package com.gameDB.gamedatabase.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.gameDB.gamedatabase.model.Game;

@Repository
public interface GameRepository extends JpaRepository<Game, Integer>{

}
