package com.example.Sonoon.controller;


import com.example.Sonoon.domain.Article;
import com.example.Sonoon.repos.ArticleRepo;
import com.example.Sonoon.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Map;

@Controller
public class MainContr {
    @Autowired
    private ArticleRepo articleRepo;

    @Autowired
    private UserRepo userRepo;

    //Спринг ишет upload.path в пропертис и подставляет значение в uploadPath
    @Value("${upload.path}")
    private String uploadPath;

    //Убрали лишнее так как на главной странице ничего не принемаем
    @GetMapping("/")
    public String greeting(
            String name, Map<String, Object> model) {
        return "greeting";
    }

    @GetMapping("/main")
    public String main(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<Article> articles;

        if (filter != null && !filter.isEmpty()) {
            articles = articleRepo.findByZagolovok(filter);
        }
        //Если пользователь ничего не вводит,
        //или вводит не корректный запрос то выводится весь список
        else {
            articles = articleRepo.findAll();
        }

        model.addAttribute("articles", articles);
        model.addAttribute("filter", filter);
        return "main";
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