package com.gamedb.fullstack.backend.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;


import com.gamedb.fullstack.backend.security.User;



public interface UserRepository extends JpaRepository<User, Integer> {

    
    @Query(value = "CALL getuserfromusername(:inputUsername);", nativeQuery = true)
    User getUserFromUsername(@Param("inputUsername") String username);
}
