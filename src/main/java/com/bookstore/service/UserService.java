package com.bookstore.service;

import com.bookstore.entity.User;
import com.bookstore.repository.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UserService {
    @Autowired
    private UserRepo userRepo;
    public User registerUser(String userName, String password) {
        Optional<User> existingUser = userRepo.findByUserName(userName);
        if (existingUser.isPresent()) {
            throw new RuntimeException("Username already exists");
        }

        User newUser = new User();
        newUser.setUserName(userName);
        newUser.setPassword(password);
        User savedUser = userRepo.save(newUser);
        return savedUser;

    }

    public boolean login(String username, String password) {
        Optional<User> user = userRepo.findByUserName(username);
        if (user.isPresent() && user.get().getPassword().equals(password)) {
            return true;
        }
        return false;
    }

}
