/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.controllers;

import com.sam.testassignment1.dtos.Movies;
import com.sam.testassignment1.repositories.MovieRepository;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
public class AdminController {

    @Autowired
    private MovieRepository movieRepo;

    @RequestMapping(value = "manageMovie", method = RequestMethod.GET)
    public ModelAndView getMovieList() {
        ModelAndView m = new ModelAndView("movie-list");
        m.addObject("movieList", movieRepo.findAll());
        return m;
    }

    @RequestMapping(value = "loadMovieForm", method = RequestMethod.GET)
    public ModelAndView loadMovieForm() {
        ModelAndView m = new ModelAndView("movie-form");
        return m;
    }

    @RequestMapping(value = "activateMovie", method = RequestMethod.GET)
    public ModelAndView activateMovie(@RequestParam("id") Long id) {
        Movies m = movieRepo.findOne(id);
        m.setStatus("1");
        movieRepo.save(m);
        return getMovieList();
    }

    @RequestMapping(value = "updateMovie", method = RequestMethod.GET)
    public ModelAndView updateMovie(@RequestParam("id") Long id) {
        ModelAndView m = new ModelAndView("movie-form");
        m.addObject("movie", movieRepo.findOne(id));
        return m;
    }

    @RequestMapping(value = "deactivateMovie", method = RequestMethod.GET)
    public ModelAndView deactivateMovie(@RequestParam("id") Long id) {
        Movies m = movieRepo.findOne(id);
        m.setStatus("0");
        movieRepo.save(m);
        return getMovieList();
    }

    @RequestMapping(value = "updateMovie", method = RequestMethod.GET)
    public ModelAndView updateMovie(
            @RequestParam("id") Long id,
            @RequestParam("title") String title,
            @RequestParam("image") String image,
            @RequestParam("category") String category,
            @RequestParam("cast") String cast,
            @RequestParam("length") int length,
            @RequestParam("date") String date,
            @RequestParam("language") String language,
            @RequestParam("description") String description,
            @RequestParam("trailer") String trailer) throws ParseException {
        Movies m = movieRepo.findOne(id);
        m.setTitle(title);
        m.setCast(cast);
        m.setCategory(category);
        m.setDescription(description);
        m.setImage(image);
        m.setLanguage(language);
        m.setLength(length);
        m.setTrailer(trailer);
        Date parsDate = new SimpleDateFormat("yyyy-MM-dd").parse(date);
        m.setDate(parsDate);
        movieRepo.save(m);
        return getMovieList();
    }
}
