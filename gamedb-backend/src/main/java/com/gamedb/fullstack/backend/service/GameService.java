package com.gamedb.fullstack.backend.service;

import java.util.List;

import com.gamedb.fullstack.backend.model.Game;

public interface GameService {
    public List<Game> getAllGames();
    public List<Game> get20GamesByNameOrder();
    public Game getOneGame(String gameName);
    public List<Game> getGameFromSearch(String gameName);
    public List<Game> get5GamesByGOTY();
    public List<Game> get3GamesByHighRate();
}
