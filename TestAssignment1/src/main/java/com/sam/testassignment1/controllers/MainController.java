/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.controllers;

import com.sam.testassignment1.dtos.Member;
import com.sam.testassignment1.repositories.MemberRepository;
import com.sam.testassignment1.repositories.MovieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class MainController {

    @Autowired
    private MemberRepository memberRepository;
    
    @Autowired
    private MovieRepository movieRepository;

    @RequestMapping("/")
    public String getHome(ModelMap model) {
        model.addAttribute("movieList",movieRepository.findAll());
        return "main";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String txtPassword) {
        ModelAndView m = new ModelAndView();
        if (memberRepository.checkLogin(username, txtPassword) != null) {
            Member member = memberRepository.checkLogin(username, txtPassword);
            String role = member.getRole();
            if (role.equals("admin")) {
                m.setViewName("admin");
            } else {
                m.setViewName("main");
            }
            m.addObject("member", member);
        } else {
            m.setViewName("home");
            m.addObject("ERROR", "Wrong username or password");
        }
        return m;
    }
}
