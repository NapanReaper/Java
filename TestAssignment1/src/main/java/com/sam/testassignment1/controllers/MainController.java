/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.controllers;

import com.sam.testassignment1.dtos.Member;
import com.sam.testassignment1.dtos.Movies;
import com.sam.testassignment1.repositories.MemberRepository;
import com.sam.testassignment1.repositories.MovieRepository;
import com.sam.testassignment1.repositories.TicketPriceRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
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
    
    @Autowired
    private TicketPriceRepository ticketPriceRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String getHome() {

        return "main";
    }

    @RequestMapping("/home")
    public String getLogin() {

        return "home";
    }

    @RequestMapping("loadRegister")
    public ModelAndView loadRegister() {
        ModelAndView m = new ModelAndView("registerAccount");
        return m;
    }

    @RequestMapping(value = "saveNewCustomer", method = RequestMethod.POST)
    public ModelAndView saveNewCustomer(@RequestParam("email") String email,
            @RequestParam("fullname") String fullname,
            @RequestParam("phone") String phone,
            @RequestParam("password") String password) {
        ModelAndView mv = new ModelAndView("blank");
        Member m = new Member();
        m.setEmail(email);
        m.setFullname(fullname);
        m.setPassword(password);
        m.setPhone(phone);
        m.setRole("user");
        m.setStatus(true);
        m.setMessage("");
        memberRepository.save(m);
        return mv;
    }

    @RequestMapping(value = "listMovie", method = RequestMethod.GET)
    public ModelAndView listMovie(@RequestParam("search") String search) {
        List<Movies> movies = movieRepository.findByTitle(search);
        ModelAndView m = new ModelAndView("listMovie");
        m.addObject("listMovie", movies);
        return m;
    }

    @RequestMapping(value = "{id}", method = RequestMethod.GET)
    public ModelAndView getDetail(@PathVariable("id") long id) {
        ModelAndView m = new ModelAndView("movie-detail");
        m.addObject("movieDetail", movieRepository.findOne(id));
        return m;
    }
    
    @RequestMapping(value = "ticket-price",method = RequestMethod.GET)
    public ModelAndView getTicketPrice(){
        ModelAndView m = new ModelAndView("ticket-price");
        m.addObject("ticketPrice", ticketPriceRepository.findAll());
        return m;
    }

    @RequestMapping(value = "login", method = RequestMethod.POST)
    public ModelAndView login(@RequestParam("username") String username, @RequestParam("password") String txtPassword) {
        ModelAndView m = new ModelAndView();
        if (memberRepository.checkLogin(username, txtPassword) != null) {
            Member member = memberRepository.checkLogin(username, txtPassword);
            boolean status = member.isStatus();
            if (status) {
                String role = member.getRole();
                if (role.equals("admin")) {
                    m.setViewName("admin");
                } else {
                    m.setViewName("main");
                }
                m.addObject("member", member);
            } else {
                String message = member.getMessage();
                m.setViewName("home");
                m.addObject("ERROR", message);
            }
        } else {
            m.setViewName("home");
            m.addObject("ERROR", "Wrong username or password");
        }
        return m;
    }
}
