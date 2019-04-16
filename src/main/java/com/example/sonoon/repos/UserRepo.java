package com.example.sonoon.repos;

import com.example.sonoon.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepo extends JpaRepository<User, Long> {
    User findByUsername(String username);
    @Override
    void deleteById(Long aLong);
    User findByActivationCode(String code);
}
