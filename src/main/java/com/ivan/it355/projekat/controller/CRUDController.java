/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivan.it355.projekat.controller;

import com.ivan.it355.projekat.dao.BgMobServisDao;
import com.ivan.it355.projekat.entity.Korisnik;
import com.ivan.it355.projekat.entity.MarkaTelefona;
import com.ivan.it355.projekat.entity.Rola;
import com.ivan.it355.projekat.entity.Servis;
import com.ivan.it355.projekat.entity.Telefon;
import com.ivan.it355.projekat.entity.ZakazivanjeServisa;
import com.ivan.it355.projekat.service.BgMobServisService;
import java.security.Principal;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Ivan
 */

@Controller
public class CRUDController 
{
    @Autowired
    BgMobServisDao bgMobServisDao;
    
    @Autowired
    BgMobServisService bgMobServisService;
    
    @RequestMapping(value = {"/"}, method = RequestMethod.GET)
    public ModelAndView home() {
        ModelAndView model = new ModelAndView();
        model.setViewName("home");
        return model;
    }
    
    @RequestMapping(value = {"/home"}, method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView model = new ModelAndView();
        model.setViewName("home");
        return model;
    }
    
    @RequestMapping(value = "/galerija", method = RequestMethod.GET)
    public String galerija(Model model) {
        return "galerija";
    }
    
    @RequestMapping(value = "/kontakt", method = RequestMethod.GET)
    public String kontakt(Model model) {
        return "kontakt";
    }
    
    @RequestMapping(value = "/onama", method = RequestMethod.GET)
    public String onama(Model model) {
        return "onama";
    }
    
    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("korisnik", new Korisnik());
        return "registration";
    }
    
    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public ModelAndView registration(@ModelAttribute("korisnik") Korisnik k, ModelAndView model) {
        k.setKorisnikAktivan(true);
        Rola rola = new Rola();
        rola.setRoleId(2);
        k.setRole(rola);
        k = bgMobServisDao.registration(k);
        model.addObject("successMsg", "Registracija je uspesna!");
        model.addObject("korisnik", k);
        return model;
    }
    
    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error,
            @RequestParam(value = "logout", required = false) String logout) {
        ModelAndView model = new ModelAndView();

        if (error != null) {
            model.addObject("error", "Uneti podaci su neispravni!");
        }
        if (logout != null) {
            model.addObject("msg", "Uspesno ste se izlogovali");
        }
        model.setViewName("login");
        return model;
    }
    
    @RequestMapping(value = "/addMarkaTelefona", method = RequestMethod.GET)
    public String addMarkaTelefona(Model model) {
        model.addAttribute("markaTelefona", new MarkaTelefona());
        return "addMarkaTelefona";
    }
   
    
    @RequestMapping(value = "/addMarkaTelefona", method = RequestMethod.POST)
    public ModelAndView addMarkaTelefona(@ModelAttribute("markaTelefona") MarkaTelefona mt, ModelAndView model) {
        if (mt.getMarkaID() == null) {
            mt = bgMobServisService.addMarkaTelefona(mt);
        }
        else
        {
            bgMobServisService.editMarkaTelefona(mt);
        }
        model.addObject("successMsg", "Marka telefona je uspesno dodata!");
        return model;
    }
    
    @RequestMapping(value = "/viewMarkeTelefona", method = RequestMethod.GET)
    public ModelAndView getMarkeTelefona(ModelAndView model) {
        model.addObject("markeTelefona", bgMobServisService.getMarkeTelefona());
        model.addObject("markaTelefona", new MarkaTelefona());
        return model;
    }
    
    @RequestMapping(value = "/editMarkaTelefona/{markaID}", method = RequestMethod.GET)
    public String editMarkaTelefona(@PathVariable("markaID") int id, Model model) {
        MarkaTelefona markaTelefona = bgMobServisService.getMarkaTelefonaById(id);
        model.addAttribute("markaTelefona", markaTelefona);
        return "addMarkaTelefona";
    }
    
    @RequestMapping(value = "/editMarkaTelefona", method = RequestMethod.POST)
    public ModelAndView editMarkaTelefona(@ModelAttribute("markaTelefona") MarkaTelefona mt, ModelAndView model) {
        bgMobServisService.editMarkaTelefona(mt);
        model.addObject("successMsg", "Marka telefona je uspesno izmenjena!");
        return model;
    }
    
    @RequestMapping(value = "/deleteMarkaTelefona/{markaID}", method = RequestMethod.GET)
    public String deleteMarkaTelefona(@PathVariable("markaID") int id, HttpServletRequest request) {
        System.out.println("Fetching & Deleting marka telefona with id " + id);
 
        MarkaTelefona mt = bgMobServisService.getMarkaTelefonaById(id);
        if (mt == null) {
            System.out.println("Nije moguce izvrsiti brisanje. Marka telefona sa id " + id + " nije pronadjena.");
            String referer = request.getHeader("Referer");
            return "redirect:" + referer;
        }

       
        bgMobServisService.deleteMarkaTelefona(mt);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }
    
    @RequestMapping(value = "/addTelefon", method = RequestMethod.GET)
    public String addTelefon(Model model) {
        model.addAttribute("telefon", new Telefon());
        model.addAttribute("markeTelefona", bgMobServisService.getMarkeTelefona());
        return "addTelefon";
    }

    @RequestMapping(value = "/addTelefon", method = RequestMethod.POST)
    public ModelAndView addTelefon(@ModelAttribute("telefon") Telefon t, ModelAndView model) {
        if (t.getTelefonID() == null)
        {
            bgMobServisService.addTelefon(t);
        }
        else
        {
            bgMobServisDao.editTelefon(t);
        }
        model.addObject("markeTelefona", bgMobServisService.getMarkeTelefona());
        model.addObject("successMsg", "Telefon je uspesno dodat!");
        model.addObject("telefon", t);
        return model;
    }
    
    @RequestMapping(value = "/editTelefon/{telefonID}", method = RequestMethod.GET)
    public String editTelefon(@PathVariable("telefonID") int id, Model model) {
        Telefon telefon = bgMobServisService.getTelefonById(id);
        model.addAttribute("markeTelefona", bgMobServisService.getMarkeTelefona());
        model.addAttribute("telefon", telefon);
        return "addTelefon";
    }
    
    @RequestMapping(value = "/editTelefon", method = RequestMethod.POST)
    public ModelAndView editTelefon(@ModelAttribute("telefon") Telefon t, ModelAndView model) {
        bgMobServisDao.editTelefon(t);
        model.addObject("successMsg", "Telefon je uspesno izmenjen!");
        return model;
    }
    
    @RequestMapping(value = "/viewTelefoni", method = RequestMethod.GET)
    public ModelAndView getTelefoni(ModelAndView model) {
        model.addObject("telefoni", bgMobServisService.getTelefoni());
        model.addObject("telefon", new Telefon());
        return model;
    }
    
    @RequestMapping(value = "/deleteTelefon/{telefonID}", method = RequestMethod.GET)
    public String deleteTelefon(@PathVariable("telefonID") int id, HttpServletRequest request) {
        System.out.println("Fetching & Deleting telefon with id " + id);
 
        Telefon t = bgMobServisService.getTelefonById(id);
        if (t == null) {
            System.out.println("Nije moguce izvrsiti brisanje. Telefona sa id " + id + " nije pronadjena.");
            String referer = request.getHeader("Referer");
            return "redirect:" + referer;
        }

       
        bgMobServisService.deleteTelefon(t);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }
    
    @RequestMapping(value = "/zakazivanjeServisa", method = RequestMethod.GET)
    public String zakazivanjeServisa(Model model) {
        model.addAttribute("zakazivanjeServisa", new ZakazivanjeServisa());
        return "zakazivanjeServisa";
    }
   
    
    @RequestMapping(value = "/zakazivanjeServisa", method = RequestMethod.POST)
    public ModelAndView zakazivanjeServisa(@ModelAttribute("zakazivanjeServisa") ZakazivanjeServisa zs, ModelAndView model, Principal principal) {
        String name = principal.getName();
        Korisnik k = bgMobServisDao.findUserByEmail(name);
        zs.setKorisnikID(k);
        bgMobServisDao.addZakazaniServis(zs);
        model.addObject("successMsg", "Zahtev za zakazivanje je uspesno poslat!");
        return model;
    }
    
    @RequestMapping(value = "/addServis", method = RequestMethod.GET)
    public String addServis(Model model) {
        model.addAttribute("servis", new Servis());
        model.addAttribute("telefoni", bgMobServisService.getTelefoni());
        model.addAttribute("zakazaniServisi", bgMobServisDao.getZakazaniServisi());
        model.addAttribute("zakazaniServis", new ZakazivanjeServisa());
        return "addServis";
    }

    @RequestMapping(value = "/addServis", method = RequestMethod.POST)
    public ModelAndView addServis(@ModelAttribute("servis") Servis s, ModelAndView model) {
        s = bgMobServisService.addServis(s);
        model.addObject("telefoni", bgMobServisService.getTelefoni());
        model.addObject("successMsg", "Servis je uspesno dodat!");
        model.addObject("servis", s);
        return model;
    }
    
    @RequestMapping(value = "/viewServisi", method = RequestMethod.GET)
    public ModelAndView getServisi(ModelAndView model) {
        model.addObject("servisi", bgMobServisService.getServisi());
        model.addObject("servis", new Servis());
        return model;
    }
    
    @RequestMapping(value = "/deleteServis/{servisID}", method = RequestMethod.GET)
    public String deleteServis(@PathVariable("servisID") int id, HttpServletRequest request) {
        System.out.println("Fetching & Deleting servis with id " + id);
        Servis s = bgMobServisService.getServisById(id);
        if (s == null) {
            System.out.println("Nije moguce izvrsiti brisanje. Telefona sa id " + id + " nije pronadjena.");
            String referer = request.getHeader("Referer");
            return "redirect:" + referer;
        }

       
        bgMobServisService.deleteServis(s);
        String referer = request.getHeader("Referer");
        return "redirect:" + referer;
    }
}
