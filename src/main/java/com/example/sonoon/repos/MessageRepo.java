package com.example.sonoon.repos;

import com.example.sonoon.domain.Message;
import org.springframework.data.repository.CrudRepository;

import java.util.List;
import java.util.Optional;

public interface MessageRepo extends CrudRepository<Message, Long> {

    List<Message> findByTag(String tag);
    Optional<Message> findById(Long id);

    @Override
    void deleteById(Long aLong);
}
