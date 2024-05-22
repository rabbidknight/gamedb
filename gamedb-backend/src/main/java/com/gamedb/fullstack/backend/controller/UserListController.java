package com.gamedb.fullstack.backend.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.gamedb.fullstack.backend.model.GameList;
import com.gamedb.fullstack.backend.requests.UserListRequest;
import com.gamedb.fullstack.backend.security.User;
import com.gamedb.fullstack.backend.service.UserListService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@RestController
@CrossOrigin("http://localhost:3000")
@RequestMapping("api/userlist")
public class UserListController {

    @Autowired
    private UserListService userListService;

    @PostMapping("/addtolist")
    public String addGameToList(@RequestBody UserListRequest userListRequest) {
        var username = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return userListService.addGameToList(username.getUsername(), userListRequest.getGamename(), userListRequest.getListname());
    }

    @GetMapping("/getuserlists")
    public  List<GameList> getUserLists() {
        var username = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return userListService.getUserList(username.getUsername());
    }


}
