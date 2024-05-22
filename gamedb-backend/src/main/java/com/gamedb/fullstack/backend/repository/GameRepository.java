package com.gamedb.fullstack.backend.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import org.springframework.stereotype.Repository;

import com.gamedb.fullstack.backend.model.Game;

@Repository
public interface GameRepository extends JpaRepository<Game, Integer>{
   
    @Query(value = "SELECT * FROM viewtop20gamesorderedbyname;", nativeQuery = true)
    List<Game> find20GamesByNameOrder();

}
