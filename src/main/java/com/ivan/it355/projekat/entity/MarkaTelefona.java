/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivan.it355.projekat.entity;

/**
 *
 * @author Ivan
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MARKATELEFONA")
public class MarkaTelefona {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "MARKAID")
    private Integer markaID;

    @Column(name = "MARKANAZIV")
    private String markaNaziv;

    public Integer getMarkaID() {
        return markaID;
    }

    public void setMarkaID(Integer markaID) {
        this.markaID = markaID;
    }

    public String getMarkaNaziv() {
        return markaNaziv;
    }

    public void setMarkaNaziv(String markaNaziv) {
        this.markaNaziv = markaNaziv;
    }
    @Override
    public String toString() {
        return "MarkaTelefona{" + "markaId=" + markaID + ", markaNaziv=" + markaNaziv + '}';
    }
    
    
}
