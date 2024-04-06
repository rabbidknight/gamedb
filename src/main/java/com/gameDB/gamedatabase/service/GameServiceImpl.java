package com.gameDB.gamedatabase.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gameDB.gamedatabase.model.Game;
import  com.gameDB.gamedatabase.repository.GameRepository;

@Service
public class GameServiceImpl implements GameService {
    @Autowired
    private GameRepository gameRepository;

    @Override
    public List<Game> getAllGames() {
        // TODO Auto-generated method stub
        return gameRepository.findAll();
    }

}
