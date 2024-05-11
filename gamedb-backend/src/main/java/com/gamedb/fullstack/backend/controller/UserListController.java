package com.gamedb.fullstack.backend.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gamedb.fullstack.backend.security.User;
import com.gamedb.fullstack.backend.service.UserListService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.PostMapping;


@RestController
@RequestMapping("api/userlist")
public class UserListController {

    @Autowired
    private UserListService userListService;

    @PostMapping("/addtolist")
    public String postMethodName(String gamename, String listname) {
        var username = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return userListService.addGameToList(username.getUsername(), gamename, listname);
    }
    
}
