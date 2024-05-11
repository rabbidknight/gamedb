package com.gamedb.fullstack.backend.controller;

import com.gamedb.fullstack.backend.model.Game;
import com.gamedb.fullstack.backend.service.GameService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;



@RestController
@RequestMapping("api/game")
public class GameController {
    @Autowired
    private GameService gameService;
    
    @GetMapping("/main/test")
    public String testGet(){
        return "Test is successful";
    }
    @GetMapping("/main/name")
    public List<Game> getMethodName() {
        return gameService.get20GamesByNameOrder();
    }
}
