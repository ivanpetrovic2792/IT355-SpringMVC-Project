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
@Table(name = "ROLA")
public class Rola {
    
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ROLEID")
    private Integer roleID;
    
    @Column(name = "ROLENAZIV")
    private String roleNaziv;
    
    @Column(name = "ROLEAKTIVNA")
    private Integer roleAktivna;

    public Integer getRoleId() {
        return roleID;
    }

    public void setRoleId(Integer roleId) {
        this.roleID = roleId;
    }

    public String getRoleNaziv() {
        return roleNaziv;
    }

    public void setRoleNaziv(String roleNaziv) {
        this.roleNaziv = roleNaziv;
    }

    public Integer getRoleAktivna() {
        return roleAktivna;
    }

    public void setRoleAktivna(Integer roleAktivna) {
        this.roleAktivna = roleAktivna;
    }

    @Override
    public String toString() {
        return "Rola{" + "roleId=" + roleID + ", roleNaziv=" + roleNaziv + ", roleAktivna=" + roleAktivna + '}';
    }
    
    
    
    
}
