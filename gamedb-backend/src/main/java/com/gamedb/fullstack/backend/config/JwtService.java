package com.gamedb.fullstack.backend.config;

import java.security.Key;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

import javax.crypto.SecretKey;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;

@Service
public class JwtService {

    private final long TOKEN_INVALID_TIME = 1000 * 60 * 24; // in miliseconds , currently 24 hours
    private static final String VERY_SECRET_VALUE = "49591454b16fcf4f0a5d52e71c5452271d8a710459969d3ad18f010960fc6644";
    public String extractUsername(String jwt) {
        extractClaim(jwt, Claims::getSubject);


        return null;
    }


    // Given the extraction method and the token, returns the claim
    public <T> T extractClaim(String token, Function<Claims, T> claimsResolver){
        final Claims claims = extractAllClaims(token);
        return claimsResolver.apply(claims);
    }

    public String generateToken(Map<String, Object> extraClaims, UserDetails userDetails){
        return Jwts
            .builder()
            .setClaims(extraClaims)
            .setSubject(userDetails.getUsername())
            .setIssuedAt(new Date(System.currentTimeMillis()))
            .setExpiration(new Date(System.currentTimeMillis() + TOKEN_INVALID_TIME))
            .signWith(getSigningKey(), SignatureAlgorithm.HS256)
            .compact();
    }

    public String generateToken(UserDetails userDetails){
        return generateToken(new HashMap<>(), userDetails);
    }

    public boolean isTokenValid(String token, UserDetails userDetails){
        final String username = extractUsername(token);
        return (username.equals(userDetails.getUsername())) && !isTokenExpired(token);

    }

    

    private boolean isTokenExpired(String token) {
        return extractExpiration(token).before(new Date());
        
    }

    private Date extractExpiration(String token) {
        return extractClaim(token, Claims::getExpiration);
    }

    private Claims extractAllClaims(String token){
        return Jwts
        .parserBuilder()
        .setSigningKey(getSigningKey())
        .build()
        .parseClaimsJws(token)
        .getBody();
    }   

    private SecretKey getSigningKey() {
        byte[] KeyBytes = Decoders.BASE64.decode(VERY_SECRET_VALUE);

        return Keys.hmacShaKeyFor(KeyBytes);
    }


}
