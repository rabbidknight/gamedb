package com.gamedb.fullstack.backend.model;

import java.time.Year;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Game {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "GameID")
    private int gameID;
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


    public String getName() {
        return name;
    }



    public String getGenres() {
        return genres;
    }



    public String getConsoleName() {
        return consoleName;
    }



    public String getDeveloperName() {
        return developerName;
    }



    public Year getReleaseYear() {
        return releaseYear;
    }





    public Game() {
    }



    public void setId(int gameID) {
        this.gameID = gameID;
    }



    public void setName(String name) {
        this.name = name;
    }



    public void setConsoleName(String consoleName) {
        this.consoleName = consoleName;
    }



    public void setReleaseYear(Year releaseYear) {
        this.releaseYear = releaseYear;
    }



    public void setDeveloperName(String developerName) {
        this.developerName = developerName;
    }



    public void setGenres(String genres) {
        this.genres = genres;
    }



   


    

}
