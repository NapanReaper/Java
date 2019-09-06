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
public class TicketPrice implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "t_t2")
    private String t_t2;

    @Column(name = "t_t3")
    private String t_t3;

    @Column(name = "t_4")
    private String t_4;

    @Column(name = "t_5")
    private String t_5;

    @Column(name = "t_t6")
    private String t_t6;

    @Column(name = "t_t7")
    private String t_t7;

    @Column(name = "t_cn")
    private String t_cn;

    @Column(name = "price")
    private float price;

    public TicketPrice() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getT_t2() {
        return t_t2;
    }

    public void setT_t2(String t_t2) {
        this.t_t2 = t_t2;
    }

    public String getT_t3() {
        return t_t3;
    }

    public void setT_t3(String t_t3) {
        this.t_t3 = t_t3;
    }

    public String getT_4() {
        return t_4;
    }

    public void setT_4(String t_4) {
        this.t_4 = t_4;
    }

    public String getT_5() {
        return t_5;
    }

    public void setT_5(String t_5) {
        this.t_5 = t_5;
    }

    public String getT_t6() {
        return t_t6;
    }

    public void setT_t6(String t_t6) {
        this.t_t6 = t_t6;
    }

    public String getT_t7() {
        return t_t7;
    }

    public void setT_t7(String t_t7) {
        this.t_t7 = t_t7;
    }

    public String getT_cn() {
        return t_cn;
    }

    public void setT_cn(String t_cn) {
        this.t_cn = t_cn;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

}
