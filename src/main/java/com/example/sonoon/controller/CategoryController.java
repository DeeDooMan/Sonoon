package com.example.sonoon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Map;

@Controller
public class CategoryController {
    @GetMapping("/category")
    public String category(Map<String, Object> model) {
        return "category";
    }

    @GetMapping("/category/family-tour")
    public String family_tour(Map<String, Object> model) {
        return "family_tour";
    }

    @GetMapping("/category/attractions")
    public String sehenswurdigkeiten(Map<String, Object> model) {
        return "attractions";
    }

    @GetMapping("/category/national-tour")
    public String national_tour(Map<String, Object> model) {
        return "national_tour";
    }

    @GetMapping("/category/history-of-nomades")
    public String history_of_nomades(Map<String, Object> model) {
        return "history_of_nomades";
    }

    @GetMapping("/category/winter-tour")
    public String winter_tour(Map<String, Object> model) {
        return "winter_tour";
    }

    @GetMapping("/category/summer-tour")
    public String summer_tour(Map<String, Object> model) {
        return "summer_tour";
    }

}
