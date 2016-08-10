/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class User_controller {
    
    @RequestMapping("/login")
    public String index(){
        return "login";
    }
    
    @RequestMapping("/bid")
    public String bid(){
        return "bid";
    }
    
    @RequestMapping(value={"/", "index"})
    public String aucAdmin(){
        return "index";
    }
    
    @RequestMapping("/shop")
    public String shop(){
        return "shop";
    }
    
    @RequestMapping("/product-details1")
    public String proDetail(){
        return "product-details1";
    }
}
