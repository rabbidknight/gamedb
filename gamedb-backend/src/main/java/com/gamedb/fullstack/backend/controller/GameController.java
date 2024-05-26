package com.gamedb.fullstack.backend.controller;

import com.gamedb.fullstack.backend.model.Game;
import com.gamedb.fullstack.backend.requests.GameRequest;
import com.gamedb.fullstack.backend.security.User;
import com.gamedb.fullstack.backend.service.GameService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;


@RestController
@CrossOrigin("http://localhost:3000")
@RequestMapping("api/game")
public class GameController {
    @Autowired
    private GameService gameService;
    
    @GetMapping("/main/test")
    public String testGet(){
        return "Test is successful";
    }
    @GetMapping("/main/name")
    public List<Game> getGameByNameOrder() {
        return gameService.get20GamesByNameOrder();
    }
    @GetMapping("/main/goty")
    public List<Game> getGameByGOTY() {
        return gameService.get5GamesByGOTY();
    }
    @GetMapping("/highrate")
    public List<Game> getGameByHighRate() {
        var username = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return gameService.get3GamesByHighRate(username.getUsername());
    }
    @PostMapping("/main/gameone")
    public Game getOneGame(@RequestBody GameRequest gameName) {
        return gameService.getOneGame(gameName.getGameName());
    }
    @PostMapping("/main/gamesearch")
    public List<Game> getSearchedGames(@RequestBody GameRequest gameName) {
        return gameService.getGameFromSearch(gameName.getGameName());
    }


}
