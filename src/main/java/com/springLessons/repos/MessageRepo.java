package com.springLessons.repos;

import com.springLessons.domain.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepo extends CrudRepository<Message, Integer> {
}
