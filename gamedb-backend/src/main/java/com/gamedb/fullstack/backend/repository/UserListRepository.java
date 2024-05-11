package com.gamedb.fullstack.backend.repository;

import org.springframework.stereotype.Repository;

import com.gamedb.fullstack.backend.model.UserList;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

@Repository
public interface UserListRepository extends JpaRepository<UserList, Integer> {

    @Query(value = "CALL AddGameToList(:userName, :gameName, :listName)", nativeQuery = true)
    String addGameToList(@Param("userName") String username, @Param("gameName") String gameName,
            @Param("listName") String listName);
}
