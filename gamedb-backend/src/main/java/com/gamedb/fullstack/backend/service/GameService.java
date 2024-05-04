package com.gamedb.fullstack.backend.service;

import java.util.List;

import com.gamedb.fullstack.backend.repository.model.Game;

public interface GameService {
    public List<Game> getAllGames();
    public List<Game> get20GamesByNameOrder();
}
