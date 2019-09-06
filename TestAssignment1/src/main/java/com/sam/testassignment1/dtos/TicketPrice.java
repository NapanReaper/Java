/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.dtos;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author hoang
 */
@Entity
@Table(name = "TicketPrice")
public class TicketPrice implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;
    
    @Column(name="t_t2")
    private String t_t2;
    
    @Column(name ="t_t3")
    private String t_t3;
    
    @Column(name="t_4")
    private String t_4;
    
    @Column(name ="t_5")
    private String t_5;
    
    @Column(name="t_t6")
    private String t_t6;
    
    @Column(name ="t_t7")
    private String t_t7;
    
    @Column(name ="t_cn")
    private String t_cn;
    
    @Column(name="price")
    private float price;
    
    
}
