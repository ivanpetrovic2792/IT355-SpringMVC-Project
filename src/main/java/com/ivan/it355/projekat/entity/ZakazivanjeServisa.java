/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivan.it355.projekat.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Ivan
 */

@Entity
@Table(name = "ZAKAZIVANJESERVISA")
public class ZakazivanjeServisa 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ZAKAZIVANJEID")
    private Integer zakazivanjeID;
    
    @ManyToOne
    @JoinColumn(name = "KORISNIKID", referencedColumnName = "KORISNIKID")
    private Korisnik korisnikID;
    
    @Column(name = "OPISPROBLEMA")
    private String opisProblema;

    public Integer getZakazivanjeID() {
        return zakazivanjeID;
    }

    public void setZakazivanjeID(Integer zakazivanjeID) {
        this.zakazivanjeID = zakazivanjeID;
    }

    public Korisnik getKorisnikID() {
        return korisnikID;
    }

    public void setKorisnikID(Korisnik korisnikID) {
        this.korisnikID = korisnikID;
    }

    public String getOpisProblema() {
        return opisProblema;
    }

    public void setOpisProblema(String opisProblema) {
        this.opisProblema = opisProblema;
    }

    @Override
    public String toString() {
        return "ZakazivanjeServisa{" + "zakazivanjeID=" + zakazivanjeID + ", korisnikID=" + korisnikID + ", opisProblema=" + opisProblema + '}';
    }
    
    
}
