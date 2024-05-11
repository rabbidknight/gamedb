package com.gamedb.fullstack.backend.authentication;


import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.gamedb.fullstack.backend.config.JwtService;
import com.gamedb.fullstack.backend.repository.UserRepository;
import com.gamedb.fullstack.backend.security.Role;
import com.gamedb.fullstack.backend.security.User;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AuthenticationService {
    
    private final UserRepository  repository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;
    public AuthenticationResponse register(RegistrationRequest request) {

        var user = User.builder()
        .username(request.getUsername())
        .email(request.getEmail())
        .password(passwordEncoder.encode(request.getPassword()))
        .role(Role.USER)
        .build();
        repository.save(user);

        var jwtToken = jwtService.generateToken(user);

        return AuthenticationResponse.builder()
            .token(jwtToken)
            .build();
    }

    public AuthenticationResponse authenticate(AuthenticationRequest request) {
        var authRequest = new UsernamePasswordAuthenticationToken(request.getUsername(), request.getPassword());
        
        authenticationManager.authenticate(authRequest);
        var user = repository.getUserFromUsername(request.getUsername());
        
        var jwtToken = jwtService.generateToken(user);

        return AuthenticationResponse.builder()
            .token(jwtToken)
            .build();
    }

}
