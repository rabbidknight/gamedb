package com.gamedb.fullstack.backend.repository;

import org.springframework.stereotype.Repository;

import com.gamedb.fullstack.backend.model.GameList;
import com.gamedb.fullstack.backend.model.UserList;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

@Repository
public interface UserListRepository extends JpaRepository<UserList, Integer> {

    @Procedure(name = "addgametolist")
    public void addGameToList(String username, String gameName, String listName);

    @Procedure(name = "getuserlist")
    public List<GameList> getUserList(String username);
}
