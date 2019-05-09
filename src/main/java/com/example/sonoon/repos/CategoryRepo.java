package com.example.sonoon.repos;

import com.example.sonoon.domain.Category;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface CategoryRepo extends CrudRepository<Category, Long> {

    @Override
    Optional<Category> findById(Long aLong);

    @Override
    void deleteById(Long aLong);
}
