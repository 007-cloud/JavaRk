package com.project.SpringBoot.controllers;

import com.project.SpringBoot.entities.Comments;
import com.project.SpringBoot.entities.NewsPost;
import com.project.SpringBoot.entities.Roles;
import com.project.SpringBoot.entities.Users;
import com.project.SpringBoot.repositories.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class MainController {
    @Autowired
    private ItemsRepository itemsRepository;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RolesRepository rolesRepository;

    @Autowired
    private NewsPostRepository newsPostRepository;

    @Autowired
    private CommentsRepository commentsRepository;

    @GetMapping(value = "/")
    public String index(ModelMap model){
        List<NewsPost> newsPosts = newsPostRepository.findAll();

        model.addAttribute("posts", newsPosts);




        return "index";
    }

    @GetMapping(path = "/registration")
    public String registrationPage(ModelMap model){

        return "registration";
    }

    @PostMapping(value = "/register")
    public String register(
            @RequestParam(name = "user_name") String name,
            @RequestParam(name = "user_email") String email,
            @RequestParam(name = "user_password") String password){
        Set<Roles> roles = new HashSet<>();
        Roles r = rolesRepository.findById(3L).orElse(null);
        roles.add(r);
        Users user = new Users(null,email,password,name,true,roles);

        userRepository.save(user);
        return "login";
    }

    @PostMapping(value = "/addPost")
    public String addPost(
            @RequestParam(name = "post_content") String content,
            @RequestParam(name = "post_short_content") String short_content,
            @RequestParam(name = "post_title") String title
    ){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Users user = userRepository.findByEmail(auth.getName());
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        Date date = new Date();

        NewsPost post = new NewsPost(null,title,short_content,content,user,date);
        newsPostRepository.save(post);



        return "redirect:/";
    }

    @PostMapping(value = "/addComment")
    public String addComment(
            @RequestParam(name = "post_id") Long id,
            @RequestParam(name = "comment") String comment
    ){
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        Users user = userRepository.findByEmail(auth.getName());
        NewsPost post = newsPostRepository.findById(id).orElse(null);

        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm");
        Date date = new Date();

        Comments com = new Comments(null,user,post,comment,date);

        commentsRepository.save(com);



        return "redirect:/postDetails/" + id;
    }



}