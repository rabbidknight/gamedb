package com.gamedb.fullstack.backend.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.gamedb.fullstack.backend.repository.RatingRepository;

@Service
public class RatingServiceImpl implements RatingService{


    @Autowired
    private RatingRepository ratingRepository;

    @Override
    public String addRating(String username, String gamename, double rating) {
        ratingRepository.addRating(username, gamename, rating);
        return "Successfull!";
    }

}
