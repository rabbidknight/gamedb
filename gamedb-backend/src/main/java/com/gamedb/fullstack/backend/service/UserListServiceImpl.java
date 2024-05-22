package com.gamedb.fullstack.backend.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamedb.fullstack.backend.model.GameList;
import com.gamedb.fullstack.backend.repository.UserListRepository;

import jakarta.transaction.Transactional;

@Service
public class UserListServiceImpl implements UserListService {

    @Autowired
    private UserListRepository userListRepository;

    @Override
    public String addGameToList(String username, String gameName, String listName) {
        userListRepository.addGameToList(username, gameName, listName);
        return "Successfull!";
    }

    @Override
    public List<GameList> getUserList(String username) {
        return userListRepository.getUserList(username);
    }

}
