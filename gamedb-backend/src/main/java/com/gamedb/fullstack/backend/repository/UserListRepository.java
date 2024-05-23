package com.gamedb.fullstack.backend.repository;

import org.springframework.stereotype.Repository;

import com.gamedb.fullstack.backend.model.GameList;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;

@Repository
public interface UserListRepository extends JpaRepository<GameList, Integer> {

    @Procedure(name = "addgametolist")
    public void addGameToList(String username, String gameName, String listName);


    @Query(value = "CALL getuserlist(:username);", nativeQuery = true)
    public List<GameList> getUserList(@Param("username")String username);

}