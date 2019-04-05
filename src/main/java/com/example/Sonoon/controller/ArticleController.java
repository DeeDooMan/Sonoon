package com.example.Sonoon.controller;


import java.io.File;
import java.io.IOException;
import java.util.UUID;
import javax.transaction.Transactional;
import javax.validation.Valid;

import com.example.Sonoon.domain.Article;
import com.example.Sonoon.domain.User;
import com.example.Sonoon.repos.ArticleRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


@Controller
    public class ArticleController {

    @Autowired
    private ArticleRepo articleRepo;

    //Спринг ишет upload.path в пропертис и подставляет значение в uploadPath
    @Value("${upload.path}")
    private String uploadPath;

    // редактировать статью
    @Transactional
    @PostMapping("/articles/{id}/edit")
    public String editArticle(
            @AuthenticationPrincipal User currentUser,
            @PathVariable Long user,
            @RequestParam("id") Article article,
            @RequestParam("text") String text,
            @RequestParam("zagalovok") String zagalovok,
            @RequestParam("categories") String categories,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        if (article.getEditor().equals(currentUser)) {
            if (!StringUtils.isEmpty(text)) {
                article.setText(text);
            }

            if (!StringUtils.isEmpty(zagalovok)) {
                article.setZagalovok(zagalovok);
            }

            if (!StringUtils.isEmpty(categories)) {
                article.setCategories(categories);
            }

            saveFile(article, file);

            articleRepo.save(article);
        }


        return "redirect:/";
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
    }

}
