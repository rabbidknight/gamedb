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
        // TODO Auto-generated method stub
        return gameRepository.findAll();
    }

    @Override
    public List<Game> get20GamesByNameOrder() {
        return gameRepository.find20GamesByNameOrder();
    }

}
