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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TELEFON")
public class Telefon {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "TELEFONID")
    private Integer telefonID;
    
    @ManyToOne
    @JoinColumn(name = "MARKAID", referencedColumnName = "MARKAID")
    private MarkaTelefona markaTelefona;
    
    @Column(name = "TELEFONNAZIV")
    private String telefonNaziv;
    
    @Column(name = "TELEFONOPIS")
    private String telefonOpis;
    
    @Column(name = "TELEFONMEMORIJA")
    private String telefonMemorija;
    
    @Column(name = "TELEFONPROCESOR")
    private String telefonProcesor;
    
    @Column(name = "TELEFONKAMERA")
    private String telefonKamera;
    
    @Column(name = "TELEFONVODOOTPORAN")
    private boolean telefonVodootporan;

    public Integer getTelefonID() {
        return telefonID;
    }

    public void setTelefonID(Integer telefonID) {
        this.telefonID = telefonID;
    }

    public MarkaTelefona getMarkaTelefona() {
        return markaTelefona;
    }

    public void setMarkaTelefona(MarkaTelefona markaTelefona) {
        this.markaTelefona = markaTelefona;
    }

    public String getTelefonNaziv() {
        return telefonNaziv;
    }

    public void setTelefonNaziv(String telefonNaziv) {
        this.telefonNaziv = telefonNaziv;
    }

    public String getTelefonOpis() {
        return telefonOpis;
    }

    public void setTelefonOpis(String telefonOpis) {
        this.telefonOpis = telefonOpis;
    }

    public String getTelefonMemorija() {
        return telefonMemorija;
    }

    public void setTelefonMemorija(String telefonMemorija) {
        this.telefonMemorija = telefonMemorija;
    }

    public String getTelefonProcesor() {
        return telefonProcesor;
    }

    public void setTelefonProcesor(String telefonProcesor) {
        this.telefonProcesor = telefonProcesor;
    }

    public String getTelefonKamera() {
        return telefonKamera;
    }

    public void setTelefonKamera(String telefonKamera) {
        this.telefonKamera = telefonKamera;
    }

    public boolean isTelefonVodootporan() {
        return telefonVodootporan;
    }

    public void setTelefonVodootporan(boolean telefonVodootporan) {
        this.telefonVodootporan = telefonVodootporan;
    }

    
}
