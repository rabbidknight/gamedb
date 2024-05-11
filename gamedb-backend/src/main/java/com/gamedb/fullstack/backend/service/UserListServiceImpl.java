package com.gamedb.fullstack.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamedb.fullstack.backend.repository.UserListRepository;

@Service
public class UserListServiceImpl implements UserListService {


    @Autowired
    private UserListRepository userListRepository;
    
    @Override
    public String addGameToList(String username, String gameName, String listName) {
        return userListRepository.addGameToList(username, gameName, listName);
    }

}
