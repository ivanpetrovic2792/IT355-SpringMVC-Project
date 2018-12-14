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
@Table(name = "SERVIS")
public class Servis 
{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "SERVISID")
    private Integer servisID;
    
    @ManyToOne
    @JoinColumn(name = "TELEFONID", referencedColumnName = "TELEFONID")
    private Telefon telefonID;
    
    @Column(name = "PROBLEM")
    private String problem;

    public Integer getServisID() {
        return servisID;
    }

    public void setServisID(Integer servisID) {
        this.servisID = servisID;
    }

    public Telefon getTelefonID() {
        return telefonID;
    }

    public void setTelefonID(Telefon telefonID) {
        this.telefonID = telefonID;
    }

    public String getProblem() {
        return problem;
    }

    public void setProblem(String problem) {
        this.problem = problem;
    }

    @Override
    public String toString() {
        return "Servis{" + "servisID=" + servisID + ", telefonID=" + telefonID + ", problem=" + problem + '}';
    }
    
}
