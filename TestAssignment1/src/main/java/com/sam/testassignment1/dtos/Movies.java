/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sam.testassignment1.dtos;

/**
 *
 * @author hoang
 */
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import java.util.List;
import javax.persistence.FetchType;
import javax.validation.constraints.NotNull;
import org.springframework.format.annotation.DateTimeFormat;

/**
 *
 * @author hoang
 */
@Entity
@Table(name = "Movies")
public class Movies implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "MOV_ID")
    @NotNull
    private Long id;

    @Column(name = "MOV_TITLE")
    private String title;

    @Column(name = "MOV_R_DTE")
    @DateTimeFormat(pattern = "dd/MM/yyyy")
    private Date date;

    @Column(name = "MOV_LEN")
    private int length;

    @Column(name = "MOV_CAT")
    private String category;

    @Column(name = "MOV_LANG")
    private String language;

    @Column(name = "MOV_DSC")
    private String description;

    @Column(name = "MOV_CAST")
    private String cast;

    @Column(name = "MOV_IMAGE")
    private String image;

    @Column(name = "MOV_S")
    private String status;

    @Column(name = "MOV_Trailer")
    private String trailer;

    @OneToMany(fetch = FetchType.EAGER, mappedBy = "movie_shedule")
    private List<Schedule> listSchedule;

    public Movies() {
    }

    public String getTrailer() {
        return trailer;
    }

    public void setTrailer(String trailer) {
        this.trailer = trailer;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getLength() {
        return length;
    }

    public void setLength(int length) {
        this.length = length;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCast() {
        return cast;
    }

    public void setCast(String cast) {
        this.cast = cast;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public List<Schedule> getListSchedule() {
        return listSchedule;
    }

    public void setListSchedule(List<Schedule> listSchedule) {
        this.listSchedule = listSchedule;
    }

}
