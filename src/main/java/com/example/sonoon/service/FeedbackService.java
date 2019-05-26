package com.example.sonoon.service;

import com.example.sonoon.domain.Feedback;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

@Service
public class FeedbackService {
    @Autowired
    private JavaMailSender mailSender;

    @Value("${spring.mail.username}")
    private String username;

    @Value("${spring.feedback.mail}")
    private String feedbackEmail;


    public void send(String emailTo, String subject, String message) {
        SimpleMailMessage mailMessage = new SimpleMailMessage();

        mailMessage.setFrom(username);
        mailMessage.setTo(emailTo);
        mailMessage.setSubject(subject);
        mailMessage.setText(message);

        mailSender.send(mailMessage);
    }

    public void sendMessage(Feedback feedback) {
        String message = String.format(
                 "ФИО пользователя: "+feedback.getAbsender()+"+\n " +
                    "Предложение: "+feedback.getMessage()+"+\n "
        );
        send(feedbackEmail, "SoNoon.kg-Обратная связь", message);
    }
}

