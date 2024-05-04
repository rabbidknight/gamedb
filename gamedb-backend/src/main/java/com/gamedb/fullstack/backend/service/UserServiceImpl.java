package com.gamedb.fullstack.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamedb.fullstack.backend.model.User;
import com.gamedb.fullstack.backend.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;
    @Override
    public String saveStudent(User  user) {
        userRepository.save(user);
        return "Student " + user.getUsername() +  "has been saved!";
    }

    public List<User> getAllUsers(){
        return userRepository.findAll();
    }

}
