package com.example.Sonoon.controller;

import com.example.Sonoon.domain.Article;
import com.example.Sonoon.domain.User;
import com.example.Sonoon.repos.ArticleRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.bind.annotation.PathVariable;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.UUID;

@Controller
public class ArticleController {

    @Autowired
    private ArticleRepo articleRepo;

    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/articles")
    public String articles(@RequestParam(required = false, defaultValue = "") String filter, Model model) {
        Iterable<Article> articles;

        if (filter != null && !filter.isEmpty()) {
            articles = articleRepo.findByZagalovok(filter);
        }
        //Если пользователь ничего не вводит,
        //или вводит не корректный запрос то выводится весь список
        else {
            articles = articleRepo.findAll();
        }

        model.addAttribute("articles", articles);
        model.addAttribute("filter", filter);
        return "articles";
    }
    @PostMapping("/articles")
    public String add(
            @AuthenticationPrincipal User user,
            @Valid Article article,
            BindingResult bindingResult,
            Model model,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap =
                    ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errorsMap);
            model.addAttribute("article", article);
        } else {
            saveFile(article, file);
            model.addAttribute("article", null);
            articleRepo.save(article);
        }
        Iterable<Article> articles = articleRepo.findAll();
        model.addAttribute("articles", articles);
        return "articles";
    }
    private void saveFile(@Valid Article article, @RequestParam("file") MultipartFile file) throws IOException {
        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            article.setFilename(resultFilename);
        }
      
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