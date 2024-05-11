package com.gamedb.fullstack.backend.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Entity
public class UserList {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int listID;
    private String listName;

}
