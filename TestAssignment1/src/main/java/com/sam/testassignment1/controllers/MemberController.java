/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.controllers;

import com.sam.testassignment1.dtos.Member;
import com.sam.testassignment1.repositories.MemberRepository;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class MemberController {

    @Autowired
    private MemberRepository memberRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "home";
    }

    @RequestMapping(value = "logout")
    public String logout() {
        return "redirect:/";
    }

    @RequestMapping(value = "register", method = RequestMethod.GET)
    public String register() {
        return "register";
    }

    @RequestMapping(value = "nowloading")
    public String toNowLoading() {
        return "loading";
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String txtPassword) {
        ModelAndView m = new ModelAndView();
        if (memberRepository.checkLogin(username, txtPassword) != null) {
            Long id = memberRepository.checkLogin(username, txtPassword);
            Member me = memberRepository.findOne(id);
            m.addObject("memberInfo", me);
            m.setViewName("main");
        } else {
            m.setViewName("home");
            m.addObject("ERROR", "Wrong username or password");
        }
        return m;
    }

    @RequestMapping(value = "register", method = RequestMethod.POST)
    public ModelAndView addNewUser(@RequestParam(value = "username") String username,
            @RequestParam(value = "email") String email,
            @RequestParam(value = "password") String password,
            @RequestParam(value = "password_confirm") String repassword) {
        ModelAndView v = new ModelAndView();
        if (password.equals(repassword)) {
            Member user = new Member();
            user.setEmail(email);
            user.setPassword(password);
            user.setUsername(username);
            user.setUpdateTime(new Date());
            user.setCreateDate(new Date());
            user.setFirstName("");
            user.setLastName("");
            user.setDescription("");
            user.setPhone("");
            memberRepository.save(user);
            v.setViewName("redirect:/");

        } else {
            v.addObject("ERROR", "Password does not match!");
            v.setViewName("register");
        }
        return v;
    }

    @RequestMapping(value = "profile-view", method = RequestMethod.POST)
    public ModelAndView profile(@RequestParam(value = "id") Long id) {
        ModelAndView v = new ModelAndView("profile");
        v.addObject("user", memberRepository.findOne(id));
        return v;
    }

    @RequestMapping(value = "/updateProfile", method = RequestMethod.POST)
    public ModelAndView update(
            @RequestParam(value = "first") String first,
            @RequestParam(value = "last") String last,
            @RequestParam(value = "phone") String phone,
            @RequestParam(value = "description") String description,
            @RequestParam(value = "id") Long id) {
        try {
            Member user = memberRepository.findOne(id);
            user.setFirstName(first);
            user.setLastName(last);
            user.setDescription(description);
            user.setPhone(phone);
            user.setUpdateTime(new Date());
            memberRepository.save(user);
            return profile(id);
        } catch (Exception e) {
            ModelAndView v = new ModelAndView("redirect:/profile");
            v.addObject("MESSAGE", "Update profile failed");
            return v;
        }
    }
}
