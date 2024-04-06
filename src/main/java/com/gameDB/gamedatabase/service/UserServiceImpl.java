package com.gameDB.gamedatabase.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gameDB.gamedatabase.model.User;
import com.gameDB.gamedatabase.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserRepository userRepository;
    @Override
    public User saveStudent(User user) {
        userRepository.save(user);
        return null;
    }

}
