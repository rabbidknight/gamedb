package com.gamedb.fullstack.backend.repository;

import org.springframework.stereotype.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;

import com.gamedb.fullstack.backend.model.Rating;


@Repository
public interface RatingRepository  extends JpaRepository<Rating, Integer>{

    @Procedure(name = "addrating")
    public void addRating(String username, String gamename, double rating);
}
