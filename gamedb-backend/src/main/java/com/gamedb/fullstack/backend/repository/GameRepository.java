package com.gamedb.fullstack.backend.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.gamedb.fullstack.backend.model.Game;

@Repository
public interface GameRepository extends JpaRepository<Game, Integer>{
   
    @Query(value = "SELECT * FROM viewtop20gamesorderedbyname;", nativeQuery = true)
    List<Game> find20GamesByNameOrder();

    @Query(value = "CALL searchGame(:gameName);", nativeQuery = true)
    public List<Game> searchGame(@Param("gameName")String gameName);

    @Query(value = "CALL searchGameOne(:gameName);", nativeQuery = true)
    public Game searchGameOne(@Param("gameName")String gameName);

    
    @Query(value = "SELECT * FROM getrandomgotygames;", nativeQuery = true)
    public List<Game> gamesByGOTY();

    @Query(value = "CALL GetGamesByRecommendation(:userName);", nativeQuery = true)
    public List<Game> gamesByRecommendation(@Param("userName")String userName);

    @Query(value = "SELECT * FROM getrandomhighratedgames;", nativeQuery = true)
    public List<Game> games5ByHighRate();
}

