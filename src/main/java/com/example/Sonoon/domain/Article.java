package com.example.Sonoon.domain;

import javax.persistence.*;

@Entity
@Table(name = "article")
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    private String text;
    private String zagalovok;
    private User editor;



    public Article() {
    }

    public Article(String text, String zagalovok, User editor) {
        this.text = text;
        this.zagalovok = zagalovok;
        this.editor = editor;

    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getZagalovok() {
        return zagalovok;
    }

    public void setZagalovok(String zagalovok) {
        this.zagalovok = zagalovok;
    }

    public User getEditor() {
        return editor;
    }

    public void setEditor(User editor) {
        this.editor = editor;
    }
}