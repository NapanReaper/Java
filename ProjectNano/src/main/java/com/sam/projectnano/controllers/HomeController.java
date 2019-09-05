/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projectnano.controllers;

import com.sam.projectnano.repositories.HomeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
public class HomeController {
    
    @Autowired
    private HomeRepository homeRepository;
    
    @RequestMapping(value = "/")
    public ModelAndView index() {
        Object b= homeRepository.findAll();
        ModelAndView m = new ModelAndView("index");;
        m.addObject("movieList", homeRepository.findAll());
        return m;
    }

}
