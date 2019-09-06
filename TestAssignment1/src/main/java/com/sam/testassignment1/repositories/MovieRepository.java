/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.repositories;

import com.sam.testassignment1.dtos.Movies;
import java.io.Serializable;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author hoang
 */
public interface MovieRepository extends JpaRepository<Movies, Long>{
    
}
