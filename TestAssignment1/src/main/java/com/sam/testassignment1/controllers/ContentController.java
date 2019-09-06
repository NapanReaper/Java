/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.controllers;

import com.sam.testassignment1.dtos.Content;
import com.sam.testassignment1.dtos.Member;
import com.sam.testassignment1.repositories.ContentRepository;
import com.sam.testassignment1.repositories.MemberRepository;
import java.util.Date;
import java.util.List;
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
public class ContentController {

    @Autowired
    private ContentRepository contentRepository;
    @Autowired
    private MemberRepository memberRepository;

    @RequestMapping(value = "/content-form", method = RequestMethod.POST)
    public ModelAndView createContent(@RequestParam(value = "id") long id) {
        ModelAndView v = new ModelAndView("content-form");
        Content c = new Content();
        c.setAuthor(memberRepository.findOne(id));
        v.addObject("content", c);
        return v;
    }

    @RequestMapping(value = "/contents", method = RequestMethod.POST)
    public ModelAndView getContentByUser(@RequestParam(value = "id") long id) {
        ModelAndView v = new ModelAndView("content-view");
        Member m = memberRepository.findOne(id);
        v.addObject("contents", contentRepository.getContentByAuthorId(m));
        return v;
    }

    @RequestMapping(value = "/content", method = RequestMethod.POST)
    public ModelAndView getById(@RequestParam(value = "id") long id) {
        ModelAndView v = new ModelAndView("content-form");
        v.addObject("content", contentRepository.findOne(id));
        return v;
    }

    @RequestMapping(value = "/content-create", method = RequestMethod.POST)
    public ModelAndView createContent(
            @RequestParam(value = "authorId") long authorId,
            @RequestParam(value = "title") String title,
            @RequestParam(value = "brief") String brief,
            @RequestParam(value = "content") String content,
            @RequestParam(value = "sort") String sort) {
        Content c = new Content();
        c.setTittle(title);
        c.setBrief(brief);
        c.setContent(content);
        c.setSort(sort);
        c.setCreateDate(new Date());
        c.setUpdateTime(new Date());
        c.setAuthor(memberRepository.findOne(authorId));
        contentRepository.save(c);
        return getContentByUser(authorId);
    }

    @RequestMapping(value = "/content-update", method = RequestMethod.POST)
    public ModelAndView updateContent(@RequestParam(value = "id") long id,
            @RequestParam(value = "authorId") long authorId,
            @RequestParam(value = "title") String title,
            @RequestParam(value = "brief") String brief,
            @RequestParam(value = "content") String content,
            @RequestParam(value = "sort") String sort) {
        Content c = contentRepository.findOne(id);
        c.setTittle(title);
        c.setBrief(brief);
        c.setContent(content);
        c.setSort(sort);
        c.setUpdateTime(new Date());
        contentRepository.save(c);
        return getContentByUser(authorId);
    }

    @RequestMapping(value = "/content-remove", method = RequestMethod.POST)
    public ModelAndView remove(@RequestParam(value = "id") long id, @RequestParam(value = "authorId") long authorId) {
        Content c = contentRepository.findOne(id);
        contentRepository.delete(c);
        return getContentByUser(authorId);
    }

    @RequestMapping(value = "/listSearchContent", method = RequestMethod.POST)
    public ModelAndView getContentBySearch(@RequestParam(value = "search") String search) {
        ModelAndView v = new ModelAndView("content-search");
        List<Content> list = contentRepository.findContents(search);
        v.addObject("searchContents", list);
        return v;
    }
}
