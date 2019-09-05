/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.projectnano.repositories;

import com.sam.projectnano.dtos.Movies;
import java.io.Serializable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author hoang
 */
@Repository
public interface HomeRepository extends JpaRepository<Movies, Long>{
    
}
