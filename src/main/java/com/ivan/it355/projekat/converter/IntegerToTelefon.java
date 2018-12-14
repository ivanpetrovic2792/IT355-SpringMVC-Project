/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivan.it355.projekat.converter;

import com.ivan.it355.projekat.dao.BgMobServisDao;
import com.ivan.it355.projekat.entity.MarkaTelefona;
import com.ivan.it355.projekat.entity.Telefon;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

/**
 *
 * @author Ivan
 */
@Component
public class IntegerToTelefon implements Converter<String, Telefon> {

    @Autowired
    BgMobServisDao bgMobServisDao;
    
    
    @Override
    public Telefon convert(String s) {
        if (s.isEmpty()) {
            return null;
        }
        Integer value = Integer.valueOf(s);
        System.out.println("Konvertujem u telefon");
        Telefon mt = bgMobServisDao.getTelefonById(value);
        return mt;
    }
    
}
