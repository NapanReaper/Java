/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.controllers;

import com.sam.testassignment1.dtos.Movies;
import com.sam.testassignment1.repositories.MovieRepository;
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
public class AdminController {

    @Autowired
    private MovieRepository movieRepo;

    @RequestMapping(value = "mangaMovie", method = RequestMethod.GET)
    public ModelAndView getMovieList() {
        ModelAndView m = new ModelAndView("movie-list");
        m.addObject("movieList", movieRepo.findAll());
        return m;
    }

    @RequestMapping(value = "activateMovie", method = RequestMethod.GET)
    public ModelAndView activateMovie(@RequestParam("id") Long id) {
        Movies m = movieRepo.findOne(id);
        m.setStatus("1");
        movieRepo.save(m);
        return getMovieList();
    }
    @RequestMapping(value = "deactivateMovie", method = RequestMethod.GET)
    public ModelAndView deactivateMovie(@RequestParam("id") Long id) {
        Movies m = movieRepo.findOne(id);
        m.setStatus("0");
        movieRepo.save(m);
        return getMovieList();
    }
}
