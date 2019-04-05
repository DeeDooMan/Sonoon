package com.example.Sonoon.controller;


import com.example.Sonoon.repos.ArticleRepo;
import com.example.Sonoon.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Map;

@Controller
public class MainContr {
    @Autowired
    private ArticleRepo articleRepo;

    @Autowired
    private UserRepo userRepo;

    //Убрали лишнее так как на главной странице ничего не принемаем
    @GetMapping("/")
    public String greeting(
            String name, Map<String, Object> model) {
        return "greeting";
    }



    @GetMapping("/deleteArticle/{id}")
    public String deleteArticle(@PathVariable("id") int id) {
        articleRepo.deleteById(id);
        return "redirect:/main";
    }

    @GetMapping("/deleteUser/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        userRepo.deleteById(id);
        return "redirect:/user";
    }
}