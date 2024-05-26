package com.gamedb.fullstack.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamedb.fullstack.backend.model.Game;
import com.gamedb.fullstack.backend.repository.GameRepository;

@Service
public class GameServiceImpl implements GameService {
    @Autowired
    private GameRepository gameRepository;

    @Override
    public List<Game> getAllGames() {
        return gameRepository.findAll();
    }

    @Override
    public List<Game> get20GamesByNameOrder() {
        return gameRepository.find20GamesByNameOrder();
    }

    @Override
    public Game getOneGame(String gameName) {
        return gameRepository.searchGameOne(gameName);
    }

    @Override
    public List<Game> getGameFromSearch(String gameName) {
        return gameRepository.searchGame(gameName);
    }

    @Override
    public List<Game> get5GamesByGOTY() {
        return gameRepository.gamesByGOTY();
    }

    @Override
    public List<Game> get3GamesByHighRate() {
        return gameRepository.gamesByHighRate();
    }

}
