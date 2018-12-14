/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivan.it355.projekat.service.impl;

import com.ivan.it355.projekat.dao.BgMobServisDao;
import com.ivan.it355.projekat.entity.Korisnik;
import com.ivan.it355.projekat.entity.MarkaTelefona;
import com.ivan.it355.projekat.entity.Servis;
import com.ivan.it355.projekat.entity.Telefon;
import com.ivan.it355.projekat.service.BgMobServisService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Ivan
 */
@Service
public class BgMobServisServiceImpl implements BgMobServisService
{
    
    @Autowired
    BgMobServisDao bgMobServisDao;

    @Override
    public List<Telefon> getTelefoni() {
        return bgMobServisDao.getTelefoni();
    }

    @Override
    public Telefon getTelefonById(int id) {
        return bgMobServisDao.getTelefonById(id);
    }

    @Override
    public List<MarkaTelefona> getMarkeTelefona() {
        return bgMobServisDao.getMarkeTelefona();
    }

    @Override
    public MarkaTelefona getMarkaTelefonaById(int id) {
        return bgMobServisDao.getMarkaTelefonaById(id);
    }

    @Override
    public List<Telefon> getTelefoniByMarkaTelefona(MarkaTelefona markaTelefona) {
        return bgMobServisDao.getTelefoniByMarkaTelefona(markaTelefona);
    }

    @Override
    public MarkaTelefona addMarkaTelefona(MarkaTelefona markaTelefona) {
        return bgMobServisDao.addMarkaTelefona(markaTelefona);
    }

    @Override
    public Telefon addTelefon(Telefon telefon) {
       return bgMobServisDao.addTelefon(telefon);
    }

    @Override
    public Korisnik registration(Korisnik korisnik) {
        return bgMobServisDao.registration(korisnik);
    }

    @Override
    public List<Korisnik> getKorisnici() {
        return bgMobServisDao.getKorisnici();
    }

    @Override
    public Korisnik getKorisnikById(int id) {
       return bgMobServisDao.getKorisnikById(id);
    }

    @Override
    public void deleteMarkaTelefona(MarkaTelefona markaTelefona) {
        bgMobServisDao.deleteMarkaTelefona(markaTelefona);
    }

    @Override
    public void deleteTelefon(Telefon telefon) {
       bgMobServisDao.deleteTelefon(telefon);
    }

    @Override
    public void editMarkaTelefona(MarkaTelefona markaTelefona) {
        bgMobServisDao.editMarkaTelefona(markaTelefona);
    }

    @Override
    public List<Servis> getServisi() {
        return bgMobServisDao.getServisi();
    }

    @Override
    public Servis getServisById(int id) {
        return bgMobServisDao.getServisById(id);
    }

    @Override
    public List<Servis> getServisByTelefon(Telefon telefon) {
        return bgMobServisDao.getServisByTelefon(telefon);
    }

    @Override
    public Servis addServis(Servis servis) {
        return bgMobServisDao.addServis(servis);
    }

    @Override
    public void editServis(Servis servis) {
        bgMobServisDao.editServis(servis);
    }

    @Override
    public void deleteServis(Servis servis) {
        bgMobServisDao.deleteServis(servis);
    }
    
}
