/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivan.it355.projekat.service;

import com.ivan.it355.projekat.entity.Korisnik;
import com.ivan.it355.projekat.entity.MarkaTelefona;
import com.ivan.it355.projekat.entity.Servis;
import com.ivan.it355.projekat.entity.Telefon;
import java.util.List;

/**
 *
 * @author Ivan
 */
public interface BgMobServisService 
{
    public List<Telefon> getTelefoni();
    
    public Telefon getTelefonById(int id);
    
    public List<MarkaTelefona> getMarkeTelefona();

    public MarkaTelefona getMarkaTelefonaById(int id);

    public List<Telefon> getTelefoniByMarkaTelefona(MarkaTelefona markaTelefona);
    
    public MarkaTelefona addMarkaTelefona(MarkaTelefona markaTelefona);
    
    public Telefon addTelefon(Telefon telefon);

    public Korisnik registration(Korisnik korisnik);
    
    public List<Korisnik> getKorisnici();
    
    public Korisnik getKorisnikById(int id);
    
    public void editMarkaTelefona(MarkaTelefona markaTelefona);
    
    public void deleteMarkaTelefona(MarkaTelefona markaTelefona);
    
    public void deleteTelefon(Telefon telefon);
    
    public List<Servis> getServisi();
    
    public Servis getServisById(int id);
    
    public List<Servis> getServisByTelefon(Telefon telefon);
    
    public Servis addServis(Servis servis);
    
    public void editServis(Servis servis);
    
    public void deleteServis(Servis servis);
}
