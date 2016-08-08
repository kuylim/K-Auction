
package org.khmeracademy.btb.auction.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
    @RequestMapping(value={"/account"})
    public String account(){
        return "account";
    }
    @RequestMapping(value={"cart"})
    public String cart(){
        return "cart";
    }
    @RequestMapping(value={"contact-us"})
    public String contactUs(){
        return "contact-us";
    }
    @RequestMapping(value={"/index","/"})
    public String index(){
        return "index";
    }
   
    @RequestMapping(value={"/login"})
    public String login(){
        return "login";
    }
    @RequestMapping(value={"/product-details1"})
    public String productDetail(){
        return "produt-details1";
    }
    @RequestMapping(value={"/shop"})
    public String shop(){
        return "shop";
    }
    @RequestMapping(value={"/wishlist"})
    public String wishlist(){
        return "wishlist";
    }

    @RequestMapping(value={"/auc-login"})
    public String aucLogin(){
        return "admin/login";
    }
    @RequestMapping(value={"/auc-admin"})
    public String aucAdmin(){
        return "admin/auc-admin";
    }
    @RequestMapping(value={"/auc-admin/manage"})
    public String aucManage(){
        return "admin/auc-manager";
    }
    @RequestMapping(value={"/auc-admin/manage/add"})
    public String aucManageAdd(){
        return "admin/auc-manager-add";
    }
    @RequestMapping(value={"/auc-admin/manage/update/**"})
    public String aucManageUpdate(){
        return "admin/auc-manager-update";
    }
    @RequestMapping(value={"/auc-admin/product"})
    public String product(){
        return "admin/product";
    }  
 @RequestMapping(value={"/auc-admin/user"})
    public String user(){
        return "admin/user";
    }    
    
}
