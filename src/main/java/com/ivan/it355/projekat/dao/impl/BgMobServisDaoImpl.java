/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivan.it355.projekat.dao.impl;

import com.ivan.it355.projekat.dao.BgMobServisDao;
import com.ivan.it355.projekat.entity.Korisnik;
import com.ivan.it355.projekat.entity.MarkaTelefona;
import com.ivan.it355.projekat.entity.Servis;
import com.ivan.it355.projekat.entity.Telefon;
import com.ivan.it355.projekat.entity.ZakazivanjeServisa;
import java.util.List;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 *
 * @author Ivan
 */

@Repository("bgMobServisDao")
@Service
public class BgMobServisDaoImpl implements BgMobServisDao
{
    // instanciramo sesiju
    @Autowired
    private SessionFactory sessionFactory;

    // kreiramo seter za sesiju
    @Autowired
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    // kreiramo geter za sesiju
    public Session getSession() {
        return sessionFactory.getCurrentSession();
    }
    
    @Override
    @Transactional
    public List<Telefon> getTelefoni() {
        List<Telefon> results = (List<Telefon>) getSession().createCriteria(Telefon.class).list();
        return results;
    }

    @Override
    @Transactional
    public Telefon getTelefonById(int id) {
        Telefon telefon = (Telefon) getSession().createCriteria(Telefon.class).add(Restrictions.eq("telefonID", id)).uniqueResult();
        return telefon;
    }

    @Override
    @Transactional
    public List<MarkaTelefona> getMarkeTelefona() {
        List<MarkaTelefona> results = (List<MarkaTelefona>) getSession().createCriteria(MarkaTelefona.class).list();
        return results;
    }

    @Override
    @Transactional
    public MarkaTelefona getMarkaTelefonaById(int id) {
        MarkaTelefona marka = (MarkaTelefona) getSession().createCriteria(MarkaTelefona.class).add(Restrictions.eq("markaID", id)).uniqueResult();
        return marka;
    }

    @Override
    @Transactional
    public List<Telefon> getTelefoniByMarkaTelefona(MarkaTelefona markaTelefona) {
        return (List<Telefon>) getSession().createCriteria(Telefon.class).add(Restrictions.eq("markaID", markaTelefona)).list();
    }

    @Override
    @Transactional
    public MarkaTelefona addMarkaTelefona(MarkaTelefona markaTelefona) {
       return (MarkaTelefona) getSession().merge(markaTelefona);
    }

    @Override
    @Transactional
    public Telefon addTelefon(Telefon telefon) {
        return (Telefon) getSession().merge(telefon);
    }

    @Override
    @Transactional
    public Korisnik registration(Korisnik korisnik) {
        return (Korisnik) getSession().merge(korisnik);
    }

    @Override
    @Transactional
    public List<Korisnik> getKorisnici() {
        List<Korisnik> results = (List<Korisnik>) getSession().createCriteria(Korisnik.class).list();
        return results;
    }

    @Override
    @Transactional
    public Korisnik getKorisnikById(int id) {
        Korisnik korisnik = (Korisnik) getSession().createCriteria(Korisnik.class).add(Restrictions.eq("korisnikID", id)).uniqueResult();
        return korisnik;
    }

    @Override
    @Transactional
    public void editMarkaTelefona(MarkaTelefona markaTelefona) {
        getSession().update(markaTelefona);
    }
    
    @Override
    @Transactional
    public void deleteMarkaTelefona(MarkaTelefona markaTelefona) {
        getSession().delete(markaTelefona);
    }

    @Override
    @Transactional
    public void deleteTelefon(Telefon telefon) {
       getSession().delete(telefon);
    }

    @Override
    @Transactional
    public List<Servis> getServisi() {
        List<Servis> results = (List<Servis>) getSession().createCriteria(Servis.class).list();
        return results;
    }

    @Override
    @Transactional
    public Servis getServisById(int id) {
        Servis servis = (Servis) getSession().createCriteria(Servis.class).add(Restrictions.eq("servisID", id)).uniqueResult();
        return servis;
    }

    @Override
    @Transactional
    public List<Servis> getServisByTelefon(Telefon telefon) {
        return (List<Servis>) getSession().createCriteria(Servis.class).add(Restrictions.eq("telefonID", telefon)).list();
    }

    @Override
    @Transactional
    public Servis addServis(Servis servis) {
        return (Servis) getSession().merge(servis);
    }

    @Override
    @Transactional
    public void editServis(Servis servis) {
        getSession().update(servis);
    }

    @Override
    @Transactional
    public void deleteServis(Servis servis) {
        getSession().delete(servis);
    }

    @Override
    @Transactional
    public ZakazivanjeServisa addZakazaniServis(ZakazivanjeServisa zs) {
        return (ZakazivanjeServisa) getSession().merge(zs);
    }

    @Override
    @Transactional
    public List<ZakazivanjeServisa> getZakazaniServisi() {
        List<ZakazivanjeServisa> results = (List<ZakazivanjeServisa>) getSession().createCriteria(ZakazivanjeServisa.class).list();
        return results;
    }

    @Override
    @Transactional
    public void deleteZakazaniTermin(ZakazivanjeServisa zs) {
        getSession().delete(zs);
    }

    @Override
    @Transactional
    public Korisnik findUserByEmail(String email) {
        Korisnik user = (Korisnik) getSession().createCriteria(Korisnik.class).add(Restrictions.eq("korisnikEmail", email)).uniqueResult();
        return user;
    }

    @Override
    @Transactional
    public void editTelefon(Telefon telefon) {
        getSession().update(telefon);
    }
}
