/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.repositories;

import com.sam.testassignment1.dtos.Content;
import com.sam.testassignment1.dtos.Member;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author Admin
 */
public interface ContentRepository extends JpaRepository<Content, Long> {

    @Query("select c from Content c where c.author = ?1")
    public List<Content> getContentByAuthorId(Member author);

    @Query("select c from Content c where c.tittle like %?1% "
            + "or c.brief like %?1% or c.content like %?1%")
    public List<Content> findContents(String search);
}
