/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class User_controller {
    
    @RequestMapping("/login")
    public String index(){
        return "login";
    }
    
    
    @RequestMapping(value={"/", "index"})
    public String aucAdmin(){
        return "index";
    }
    
    @RequestMapping("/shop")
    public String shop(){
        return "shop";
    }
    
    @RequestMapping("/product-details/{id}")
    public String proDetail( ModelMap model,   @PathVariable("id") int id){
        model.addAttribute("id", id);
        return "product-details1";
    }
}
