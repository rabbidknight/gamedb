package com.gamedb.fullstack.backend.model;

import java.time.Year;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Entity
@RequiredArgsConstructor
@Getter
public class GameList {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "GameID")
    private int gameID;
    @Column(name = "Listname")
    private String listName;
    @Column(name = "Name")
    private String name;
    @Column(name = "Consolename")
    private String consoleName;
    @Column(name = "Releaseyear")
    private Year releaseYear;
    @Column(name = "Developername")
    private String developerName;
    @Column(name = "Genres")
    private String genres;
    @Column(name = "Imageurl")
    private String imageUrl;
}
