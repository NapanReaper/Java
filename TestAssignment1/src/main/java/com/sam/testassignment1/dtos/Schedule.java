/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.dtos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

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
    private String date;
    @ManyToOne
    @JoinColumn(name = "MOV_ID", referencedColumnName = "MOV_ID")
    private Movies movie_shedule;

}
