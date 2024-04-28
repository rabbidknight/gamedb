package com.gamedb.fullstack.backend.service;


import java.util.List;

import com.gamedb.fullstack.backend.model.User;


public interface UserService {
    public String saveStudent(User user);
    public List<User> getAllUsers();
}
