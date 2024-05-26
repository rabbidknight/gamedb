package com.gamedb.fullstack.backend.model;
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
public class Rating {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY) 
    @Column(name = "RatingID")
    private int ratingID;
    @Column(name = "Rating")
    private double rating;
}
