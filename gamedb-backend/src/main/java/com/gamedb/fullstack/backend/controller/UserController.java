package com.gamedb.fullstack.backend.controller;
import com.gamedb.fullstack.backend.service.UserService;
import com.gamedb.fullstack.backend.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin("http://localhost:3000")
public class UserController {

    @Autowired
    private UserService userService;

    @PostMapping("/user")
    String newUser(@RequestBody User newUser){
        return userService.saveStudent(newUser);
    }

    @GetMapping("/users")
    List<User> allUserList(){
        return userService.getAllUsers();
    }
}
