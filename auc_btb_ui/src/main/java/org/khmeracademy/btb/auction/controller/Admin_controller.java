
package org.khmeracademy.btb.auction.controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Admin_controller {

    @RequestMapping(value={"/auc-login"})
    public String aucLogin(){
        return "admin/login";
    }
    @RequestMapping(value={"/auc-admin"})
    public String aucAdmin(){
        return "admin/auc-admin";
    }
    @RequestMapping(value={"/auc-admin/manage/info/{id}"})
    public String aucManageUpdate (ModelMap model,   @PathVariable("id") int id){
        model.addAttribute("id", id);
        return "admin/auc-manager-info";
    }
    
    @RequestMapping(value={"/auc-admin/manage"})
    public String aucManage(){
        return "admin/auc-manager";
    }
    @RequestMapping(value={"/auc-admin/manage/add"})
    public String aucManageAdd(){
        return "admin/auc-manager-add";
    }
    
    @RequestMapping(value={"/auc-admin/product"})
    public String product(){
        return "admin/product";
    }  
 @RequestMapping(value={"/auc-admin/user"})
    public String aucUser(){
        return "admin/auc-user";
    }
    @RequestMapping(value={"/auc-admin/bidder"})
    public String aucAdminAC(){
        return "admin/auc-adminAC";
    }
    @RequestMapping(value={"/auc-admin/superSU"})
    public String aucAdminSuperSU(){
        return "admin/auc-adminSU";
    }
    @RequestMapping(value={"/auc-admin/category"})
    public String aucCategory(){
        return "admin/auc-category";
    }
    @RequestMapping(value={"/auc-admin/brand"})
    public String aucBrand(){
        return "admin/auc-brand";
    }
    
// @RequestMapping(value={"/auc-admin/user/"})
//    public String aucUserAdd(){
//        return "admin/auc-user-add";
//    }     
    @RequestMapping(value={"/auc-admin/user/update/{id}"})
    public String userUpdate(ModelMap model,   @PathVariable("id") int id){
        model.addAttribute("id", id);
        return "admin/auc-user-update";
    } 
}
