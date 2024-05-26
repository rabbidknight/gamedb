package com.gamedb.fullstack.backend.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.gamedb.fullstack.backend.requests.RatingRequest;
import com.gamedb.fullstack.backend.requests.UserListRequest;
import com.gamedb.fullstack.backend.security.User;
import com.gamedb.fullstack.backend.service.RatingService;
import com.gamedb.fullstack.backend.service.UserListService;

@RestController
@CrossOrigin("http://localhost:3000")
@RequestMapping("api/rating")
public class RatingController {

    @Autowired
    private RatingService ratingService;


    @PostMapping("/addrating")
    public String addRatingToUser(@RequestBody RatingRequest ratingRequest) {
        var username = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return ratingService.addRating(username.getUsername(), ratingRequest.getGamename(), ratingRequest.getRating());
    }
}
