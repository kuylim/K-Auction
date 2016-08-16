/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.controller;

import org.khmeracademy.btb.auction.entity.User;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class User_controller {
    
//    @RequestMapping(value =  "/login")
//    public String login(ModelMap model){
//        return "login";
//    }
    
    
    @RequestMapping(value={"/", "/index", "/home"})
    public String aucAdmin(){
        return "index";
    }
    
//     @RequestMapping("/account")
//    public String account(){
//        return "account";
//    }
    
//    @RequestMapping("/shop/**")
//    public String shop(){
//        return "shop";
//    }
    
    @RequestMapping("/product-details/{id}")
    public String proDetail( ModelMap model,   @PathVariable("id") int id){
        model.addAttribute("id", id);
        return "product-details1";
    }
    
    @RequestMapping("/access-denied")
    public String Permision()
    {
        return "no-permison";
    }
    
    @RequestMapping("/auction/category/{cat_id}")
    public String auction_by_category(ModelMap model , @PathVariable("cat_id") int cat_id)
    {
        model.addAttribute("cat_id", cat_id);
        return "auction-by-category";
    }
}
