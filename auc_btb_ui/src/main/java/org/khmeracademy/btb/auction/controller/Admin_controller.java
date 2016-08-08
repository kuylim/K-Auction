
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
    @RequestMapping(value={"/auc-admin/manage/update/{id}"})
    public String aucManageUpdate (ModelMap model,   @PathVariable("id") int id){
        model.addAttribute("id", id);
        return "admin/auc-manager-update";
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
    public String user(){
        return "admin/user";
    }    
    
}
