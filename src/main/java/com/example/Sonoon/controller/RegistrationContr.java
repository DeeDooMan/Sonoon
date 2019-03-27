package com.example.Sonoon.controller;

import com.example.Sonoon.domain.Role;
import com.example.Sonoon.domain.User;
import com.example.Sonoon.repos.UserRepo;
import com.example.Sonoon.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationContr {
    @Autowired
    private UserService userService;

    @GetMapping("/registration")
    public String registration(){
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(User user, Map<String, Object> model){
        if (!userService.addUser(user)){
            model.put("message", "Данное имя пользователя не доступно!");
            return "registration";
        }

        return "redirect:/login";
    }
}