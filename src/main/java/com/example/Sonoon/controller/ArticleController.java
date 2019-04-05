package com.example.Sonoon.controller;

import com.example.Sonoon.domain.Article;
import com.example.Sonoon.repos.ArticleRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class ArticleController {
    @Autowired
    private ArticleRepo articleRepo;

    @GetMapping("/article/{id}")
    public String getArticle(Model model, @PathVariable Integer id) {
        Article article = articleRepo.getOne(id);
        articleRepo.save(article);
        model.addAttribute("newArticle", article);
        return "article";
    }

    @GetMapping("/article/{id}/edit")
    public String editArticle(Model model, @PathVariable Integer id) {
        Article article = articleRepo.getOne(id);

        model.addAttribute("newsArticle", new Article(article.getText(), article.getZagalovok(), article.getEditor()));
        model.addAttribute("articleId", id);
        return "edit";
    }
}
