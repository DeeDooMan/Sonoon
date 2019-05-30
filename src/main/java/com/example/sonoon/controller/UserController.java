package com.example.sonoon.controller;

import com.example.sonoon.domain.Feedback;
import com.example.sonoon.domain.Role;
import com.example.sonoon.domain.User;
import com.example.sonoon.service.UserSevice;
import com.example.sonoon.service.FeedbackService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserSevice userSevice;

    @Autowired
    private FeedbackService feedbackService;

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping
    public String userList(Model model) {
        model.addAttribute("users", userSevice.findAll());

        return "userList";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @GetMapping("{user}")
    public String userEditForm(@PathVariable User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("roles", Role.values());

        return "userEdit";
    }

    @PreAuthorize("hasAuthority('ADMIN')")
    @PostMapping
    public String userSave(
            @RequestParam String username,
            @RequestParam Map<String, String> form,
            @RequestParam("userId") User user
    ) {
        userSevice.saveUser(user, username, form);

        return "redirect:/user";
    }

    @GetMapping("/feedback")
    public String getFeedback(){
        return "feedback";
    }

    @PostMapping("feedback")
    public String sendFeedback(
            @AuthenticationPrincipal User currentUser,
            @RequestParam String absender,
            @RequestParam String feedback,Model model) {
        if (absender == null && absender.length() <= 0 || feedback == null && feedback.length() <= 0 ){
            model.addAttribute("feedbackError", "Вы допустили ошибку! Введите предложение!");
        }
        feedbackService.sendMessage(new Feedback(absender, feedback, currentUser.getEmail()));
        return "redirect:/user/feedback";
    }

    @GetMapping("profile")
    public String getProfile(Model model, @AuthenticationPrincipal User user) {
        model.addAttribute("username", user.getUsername());
        model.addAttribute("email", user.getEmail());

        return "profile";
    }

    @PostMapping("profile")
    public String updateProfile(
            @AuthenticationPrincipal User user,
            @RequestParam String password,
            @RequestParam String email
    ) {
        userSevice.updateProfile(user, password, email);

        return "redirect:/user/profile";
    }

}
