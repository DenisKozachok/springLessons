package com.springLessons.controller;

import com.springLessons.domain.Role;
import com.springLessons.domain.User;
import com.springLessons.repos.MessageRepo;
import com.springLessons.repos.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.Collection;
import java.util.Collections;
import java.util.Map;

@Controller
public class RegistrationController {

    @Autowired
    private UserRepo userRepo;

    @GetMapping("/registration")
    public String registration(Model model)
    {
        model.addAttribute("message", "");
        return ("/registration");
    }

    @PostMapping("/registration")
    public String addNewUser(User user, Map<String, Object> model) {
        User userFromDb = userRepo.findByUserName(user.getUsername());

        if (userFromDb != null) {
            model.put("message", "User exists");
            return "registration";
        }

        user.setActive(true);
        user.setRoles(Collections.singleton(Role.USER));
        userRepo.save(user);

        return "redirect:/login";
    }

}
