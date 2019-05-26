package com.example.sonoon.domain;

public class Feedback {
    
    private String absender;

    private String message;

    private String email;

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public  Feedback(){

    }

    public Feedback(String absender, String message, String email){
        this.absender = absender;
        this.message = message;
    }

    public String getAbsender() {
        return absender;
    }

    public void setAbsender(String absender) {
        this.absender = absender;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
