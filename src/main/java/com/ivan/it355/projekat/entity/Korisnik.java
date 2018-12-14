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
import java.sql.Timestamp;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "KORISNIK")
public class Korisnik {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "KORISNIKID")
    private Integer korisnikID;
    
    @ManyToOne
    @JoinColumn(name = "ROLEID", referencedColumnName = "ROLEID")
    private Rola role;
    
    @Column(name = "KORISNIKEMAIL")
    private String korisnikEmail;
    
    @Column(name = "KORISNIKPASSWORD")
    private String korisnikPassword;
    
    @Column(name = "KORISNIKIME")
    private String korisnikIme;
    
    @Column(name = "KORISNIKPREZIME")
    private String korisnikPrezime;
    
    @Column(name = "KORISNIKAKTIVAN")
    private boolean korisnikAktivan;
    
    @Column(name = "KORISNIKREGISTROVAN")
    private Timestamp korisnikRegistrovan;

    public Integer getKorisnikID() {
        return korisnikID;
    }

    public void setKorisnikID(Integer korisnikID) {
        this.korisnikID = korisnikID;
    }

    public Rola getRole() {
        return role;
    }

    public void setRole(Rola role) {
        this.role = role;
    }

    public String getKorisnikEmail() {
        return korisnikEmail;
    }

    public void setKorisnikEmail(String korisnikEmail) {
        this.korisnikEmail = korisnikEmail;
    }

    public String getKorisnikPassword() {
        return korisnikPassword;
    }

    public void setKorisnikPassword(String korisnikPassword) {
        this.korisnikPassword = korisnikPassword;
    }

    public String getKorisnikIme() {
        return korisnikIme;
    }

    public void setKorisnikIme(String korisnikIme) {
        this.korisnikIme = korisnikIme;
    }

    public String getKorisnikPrezime() {
        return korisnikPrezime;
    }

    public void setKorisnikPrezime(String korisnikPrezime) {
        this.korisnikPrezime = korisnikPrezime;
    }

    public boolean isKorisnikAktivan() {
        return korisnikAktivan;
    }

    public void setKorisnikAktivan(boolean korisnikAktivan) {
        this.korisnikAktivan = korisnikAktivan;
    }

    public Timestamp getKorisnikRegistrovan() {
        return korisnikRegistrovan;
    }

    public void setKorisnikRegistrovan(Timestamp korisnikRegistrovan) {
        this.korisnikRegistrovan = korisnikRegistrovan;
    }

    @Override
    public String toString() {
        return "Korisnik{" + "korisnikId=" + korisnikID + ", role=" + role + ", korisnikEmail=" + korisnikEmail + ", korisnikPassword=" + korisnikPassword + ", korisnikIme=" + korisnikIme + ", korisnikPrezime=" + korisnikPrezime + ", korisnikAktivan=" + korisnikAktivan + ", korisnikRegistrovan=" + korisnikRegistrovan + '}';
    }
}