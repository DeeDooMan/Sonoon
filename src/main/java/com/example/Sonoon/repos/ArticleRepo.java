package com.example.Sonoon.repos;

import com.example.Sonoon.domain.Article;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface ArticleRepo extends CrudRepository<Article,Integer> {
    // ищет статью по заголовкам
    List<Article> findByZagolovok(String zagolovok);
    @Override
    //удаляет данные с помощью id
    void deleteById(Integer integer);
}
