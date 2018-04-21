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
    
    @RequestMapping(value={"/", "/index", "/home"})
    public String aucAdmin(){
        return "index";
    }
    
    @RequestMapping("/product-details/{id}")
    public String proDetail( ModelMap model,   @PathVariable("id") int id){
        model.addAttribute("id", id);
        return "product-details1";
    }
    
    @RequestMapping(value={"/access-denied"})
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
    
    @RequestMapping("/auction/brand/{brand_id}")
    public String auction_by_brand(ModelMap model, @PathVariable("brand_id") int brand_id)
    {
        model.addAttribute("brand_id", brand_id);
        return "auction-by-brand";
    }
    
    @RequestMapping("/account/{user_id}")
    public String user_account(ModelMap model, @PathVariable("user_id") int user_id)
    {
        model.addAttribute("user_id" ,user_id);
        return "account";
    }
    
    @RequestMapping("/auction/search/{pro_name}")
    public String searchByProName(ModelMap model, @PathVariable("pro_name") String pro_name)
    {
        model.addAttribute("pro_name" ,pro_name);
        return "search";
    }
    
    @RequestMapping("/verifykey/{key}")
    public String verifyEmail(ModelMap model, @PathVariable("key") String key)
    {
        return "verify-email";
    }
}
