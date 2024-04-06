package com.gameDB.gamedatabase.controller;

import org.springframework.web.bind.annotation.RestController;

import com.gameDB.gamedatabase.model.User;
import com.gameDB.gamedatabase.service.UserService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;




@RestController
@RequestMapping("/user")

public class UserController {
    @Autowired
    private UserService userService;

    @PostMapping("/add")
    public String add(@RequestBody User user) {
        userService.saveStudent(user);        
        return "New user is added";
    }
    
}
