/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ivan.it355.projekat.converter;

/**
 *
 * @author Ivan
 */
import com.ivan.it355.projekat.dao.BgMobServisDao;
import com.ivan.it355.projekat.entity.MarkaTelefona;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;
@Component
public class IntegerToMarkaTelefona implements Converter<String, MarkaTelefona> {

    @Autowired
    BgMobServisDao bgMobServisDao;
    
    
    @Override
    public MarkaTelefona convert(String s) {
        if (s.isEmpty()) {
            return null;
        }
        Integer value = Integer.valueOf(s);
        System.out.println("Konvertujem u marku");
        MarkaTelefona mt = bgMobServisDao.getMarkaTelefonaById(value);
        return mt;
    }
    
}
