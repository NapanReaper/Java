/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.dtos;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author hoang
 */
@Entity
@Table(name = "Schedule")
public class Schedule {

    @Id
    @Column(name = "CNM_ID")
    @NotNull
    private Long id;

    @Column(name = "CNM_NAME")
    private String name;

    @Column(name = "CNM_S_1")
    private String t1;

    @Column(name = "CNM_S_2")
    private String t2;

    @Column(name = "CNM_S_3")
    private String t3;

    @Column(name = "CNM_S_4")
    private String t4;

    @Column(name = "CNM_S_5")
    private String t5;

    @Column(name = "CNM_DTE")
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date date;
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "MOV_ID", referencedColumnName = "MOV_ID")
    private Movies movie_shedule;

    public Schedule() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }

    public String getT3() {
        return t3;
    }

    public void setT3(String t3) {
        this.t3 = t3;
    }

    public String getT4() {
        return t4;
    }

    public void setT4(String t4) {
        this.t4 = t4;
    }

    public String getT5() {
        return t5;
    }

    public void setT5(String t5) {
        this.t5 = t5;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Movies getMovie_shedule() {
        return movie_shedule;
    }

    public void setMovie_shedule(Movies movie_shedule) {
        this.movie_shedule = movie_shedule;
    }

}
