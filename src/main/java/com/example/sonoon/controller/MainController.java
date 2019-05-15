package com.example.sonoon.controller;

import com.example.sonoon.domain.Message;
import com.example.sonoon.domain.User;
import com.example.sonoon.repos.MessageRepo;
import com.example.sonoon.repos.UserRepo;
import com.example.sonoon.service.UserSevice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

@Controller
public class MainController {
    @Autowired
    private MessageRepo messageRepo;

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private UserSevice userSevice;


    @Value("${upload.path}")
    private String uploadPath;

    @GetMapping("/")
    public String greeting(Map<String, Object> model) {
        return "index";
    }

    @GetMapping("/single")
    public String single(Map<String, Object> model) {
        return "single";
    }

    @GetMapping("/contact")
    public String contact(Map<String, Object> model) {
        return "contact";
    }

    @GetMapping("/lifestyle")
    public String lifestyle(Map<String, Object> model) {
        return "lifestyle";
    }

    @GetMapping("/about")
    public String about(Map<String, Object> model) {
        return "about";
    }

    @GetMapping("/foods")
    public String main(@RequestParam(required = false, defaultValue = "") String filter, Model model){
        Iterable<Message> messages;

        if (filter !=null && !filter.isEmpty()) {
            messages = messageRepo.findByTag(filter);
        }
        else {
            messages = messageRepo.findAll();
        }

        model.addAttribute("messages", messages);
        model.addAttribute("filter", filter);
        return "foods";
    }

    @PostMapping("/foods")
    public String add(
            @AuthenticationPrincipal User user,
            @Valid Message message,
            BindingResult bindingResult,
            Model model,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        message.setAuthor(user);

        if (bindingResult.hasErrors()) {
            Map<String, String> errorsMap =
                    ControllerUtils.getErrors(bindingResult);
            model.mergeAttributes(errorsMap);
            model.addAttribute("message", message);
        } else {
            saveFile(message, file);
            model.addAttribute("message", null);
            messageRepo.save(message);
        }
        Iterable<Message> messages = messageRepo.findAll();
        model.addAttribute("messages", messages);
        return "foods";
    }




    @GetMapping("/user-messages/{user}")
    public  String userMessages(
            @AuthenticationPrincipal User currentUser,
            @PathVariable User user,
            Model model,
            @RequestParam(required = false) Message message
    ){
        Set<Message> messages = user.getMessages();

        model.addAttribute("messages", messages);
        model.addAttribute("message", message);
        model.addAttribute("isCurrentUser", currentUser.equals(user));

        return "userMessages";
    }

    @PostMapping("/user-messages/{user}")
    public String updateMessage(
            @AuthenticationPrincipal User currentUser,
            @PathVariable Long user,
            @RequestParam("id") Message message,
            @RequestParam("text") String text,
            @RequestParam("tag") String tag,
            @RequestParam("file") MultipartFile file
    ) throws IOException {
        if (message.getAuthor().equals(currentUser)) {
            if (!StringUtils.isEmpty(text)) {
                message.setText(text);
            }

            if (!StringUtils.isEmpty(tag)) {
                message.setTag(tag);
            }
            saveFile(message, file);

            messageRepo.save(message);
        }

        return "redirect:/user-messages/" + user;
    }

    @GetMapping("/opublicovat/{id}")
    public String opublicovat(@PathVariable("id") Message message) {
            message.setActive(true);
            messageRepo.save(message);
        return "redirect:/foods";}

    @GetMapping("/neopublicovat/{id}")
    public String neopublicovat(@PathVariable("id") Message message) {
        message.setActive(false);
        messageRepo.save(message);
        return "redirect:/foods";}

    @GetMapping("/c/{id}")
    public String isAktiv(@PathVariable("id") Message message,Model model) {
            message.isActive();
           model.addAttribute(message);
        return "redirect:/foods";

    }@GetMapping("/deleteMessage/{id}")
    public String deleteMessage(@PathVariable("id") Long id) {
        messageRepo.deleteById(id);
        return "redirect:/foods";
    }

    @GetMapping("/deleteUser/{id}")
    public String deleteUser(@PathVariable("id") Long id) {
        userRepo.deleteById(id);
        return "redirect:/user";}

    private void saveFile(@Valid Message message, @RequestParam("file") MultipartFile file) throws IOException {
        if (file != null && !file.getOriginalFilename().isEmpty()) {
            File uploadDir = new File(uploadPath);

            if (!uploadDir.exists()) {
                uploadDir.mkdir();
            }

            String uuidFile = UUID.randomUUID().toString();
            String resultFilename = uuidFile + "." + file.getOriginalFilename();

            file.transferTo(new File(uploadPath + "/" + resultFilename));

            message.setFilename(resultFilename);
        }
    }

    }