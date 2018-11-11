/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author esery
 */
@Controller
public class CalculatorController {

    @RequestMapping(value="/index", method= RequestMethod.POST)
    public ModelAndView Index(
    @RequestParam("sayi1") String sayi1, @RequestParam("sayi2") String sayi2, @RequestParam("type") String type,@RequestParam("result") String result)

    {
        ModelAndView model = new ModelAndView("Index");
        result = result( sayi1, sayi2,type );
        model.addObject(result);
        
        
        
        return model;
    }
    public String result(String sayi1, String sayi2, String type) {
		String toplam ="" ;
                int num1 , num2,sonuc=0;
                num1 = Integer.parseInt(sayi1);
                num2 = Integer.parseInt(sayi2);
		if(type.equals('1')){
                    sonuc = num1 + num2;
                }
                else if(type.equals('2')){
                    sonuc = num1 - num2;
                }
                else if(type.equals('3')){
                    sonuc = num1 / num2;
                }
                else if(type.equals('4')){
                    sonuc = num1 * num2;
                }
                
                toplam = Integer.toString(sonuc);
	
		return toplam;
	}
}
