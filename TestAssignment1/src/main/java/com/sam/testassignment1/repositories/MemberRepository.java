/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.repositories;

import com.sam.testassignment1.dtos.Member;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

/**
 *
 * @author Admin
 */
public interface MemberRepository extends JpaRepository<Member, Long> {

    @Query("select m.id from Member m where m.username = ?1 and m.password = ?2")
    public Long checkLogin(String username, String password);
}
