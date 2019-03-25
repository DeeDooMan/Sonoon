package com.example.Sonoon.controller;

import com.example.Sonoon.domain.Role;
import com.example.Sonoon.domain.User;
import com.example.Sonoon.domain.dto.CaptchaResponseDto;
import com.example.Sonoon.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationContr {
    private static final String CAPTCHA_URL ="https://www.google.com/recaptcha/api/siteverify?secret=%s&response"; //recaptcha post-запрос

    @Autowired
    private UserRepo userRepo;

    @Autowired
    private RestTemplate restTemplate;

    @Value("${recaptcha.secret}")
    private String secret; //СЕКРЕТНЫЙ КЛЮЧ РЕКАПЧИ

    @GetMapping("/registration")
    public String registration(){
        return "registration";
    }

    @PostMapping("/registration")
    public String addUser(
            @RequestParam("g-recaptcha-response") String recaptchaResponse,
            User user,
            Map<String,
            Object> model){
        String captchaurl = String.format(CAPTCHA_URL,secret,recaptchaResponse);
        CaptchaResponseDto captchaResponse = restTemplate.postForObject(captchaurl,Collections.emptyList(), CaptchaResponseDto.class);
        if(!captchaResponse.isSuccess()){
            System.out.println("Captcha Error "+ captchaResponse.getErrorCodes());
        }

        User userFromDb = userRepo.findByUsername(user.getUsername());

        //Сообщаем если такой пользователь есть в базе данных
        if (userFromDb != null){
            model.put("message", "Данное имя пользователя не доступно!");
            return "registration";
        }

        user.setActive(true);
        //На вход ожидается коллекция в виде Set,
        //но так как у нас всего одно значение мы можем
        //использовать шорткат, из стандартной библиотеки,
        //который создает set с одним единственным значением
        user.setRoles(Collections.singleton(Role.ADMIN));
        userRepo.save(user);
        return "redirect:/login";
    }
}