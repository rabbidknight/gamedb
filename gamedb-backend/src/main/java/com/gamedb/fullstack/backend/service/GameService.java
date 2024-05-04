package com.gamedb.fullstack.backend.service;

import com.gamedb.fullstack.backend.model.Game;

import java.util.List;

public interface GameService {
    public List<Game> getAllGames();
    public List<Game> get20GamesByNameOrder();
}
