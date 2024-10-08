package com.gamedb.fullstack.backend.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.gamedb.fullstack.backend.repository.UserRepository;
import com.gamedb.fullstack.backend.security.User;

import lombok.RequiredArgsConstructor;

@Configuration
@RequiredArgsConstructor
public class ApplicationConfig {
    

    private final UserRepository userRepository;

    @Bean
    public UserDetailsService  userDetailsService(){
        return new UserDetailsService() {

            @Override
            public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {             
                return  userRepository.getUserFromUsername(username);
            }
        };
    }

    @Bean 
    public AuthenticationProvider authenticationProvider(){
        DaoAuthenticationProvider authProv = new DaoAuthenticationProvider();
        authProv.setPasswordEncoder(passwordEncoder());
        authProv.setUserDetailsService(userDetailsService());
        return authProv;
    }


    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public AuthenticationManager authenticationManager(AuthenticationConfiguration conf) throws Exception{
        return conf.getAuthenticationManager();
    }


    
}
