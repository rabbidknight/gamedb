package com.gamedb.fullstack.backend.controller;

import com.gamedb.fullstack.backend.repository.model.Game;
import com.gamedb.fullstack.backend.service.GameService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;



@RestController
@RequestMapping("/games")
public class GameController {
    @Autowired
    private GameService gameService;
    
    @GetMapping("/test")
    public String testGet(){
        return "Test is successful";
    }
    @GetMapping("/name")
    public List<Game> getMethodName() {
        return gameService.get20GamesByNameOrder();
    }
    
    
}
