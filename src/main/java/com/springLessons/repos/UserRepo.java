package com.springLessons.repos;

import com.springLessons.domain.Message;
import com.springLessons.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface UserRepo extends JpaRepository<User,Long> {

    User findByUserName(String userName);

}
