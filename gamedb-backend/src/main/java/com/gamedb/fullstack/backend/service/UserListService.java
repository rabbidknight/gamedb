package com.gamedb.fullstack.backend.service;

import java.util.List;

import com.gamedb.fullstack.backend.model.GameList;

public interface UserListService {

    public String addGameToList(String username, String gameName, String listName);
    public List<GameList> getUserList(String username);
    public String removeGameFromList(String username, String gamename, String listname);
}
