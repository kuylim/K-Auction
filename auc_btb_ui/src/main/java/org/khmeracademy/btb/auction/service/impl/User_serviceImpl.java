/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.khmeracademy.btb.auction.entity.Role;
import org.khmeracademy.btb.auction.entity.User;
import org.khmeracademy.btb.auction.entity.UserLogin;
import org.khmeracademy.btb.auction.service.User_service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author KUYLIM
 */
@Service
public class User_serviceImpl implements User_service{

    @Autowired
    private RestTemplate rest;
	
    @Autowired
    private String WS_URL;
    
    @Override
    public User findUserByEmail(String userEmail) {
        System.out.println(userEmail);
		
		UserLogin login = new UserLogin();
		
		login.setEmail(userEmail);
		HttpEntity<Object> request = new HttpEntity<Object>(login);
		ResponseEntity<Map> response = rest.exchange(WS_URL + "/customer/find-user-by-email", HttpMethod.POST , request , Map.class) ;
		Map<String, Object> map = (HashMap<String, Object>)response.getBody();
		if(map.get("DATA") != null){
			Map<String , Object> data = (HashMap<String , Object>) map.get("DATA");
			User u = new User();
			u.setId((Integer)data.get("cus_id"));
			u.setEmail((String)data.get("email"));
			u.setUsername((String)data.get("username"));
			u.setPassword((String) data.get("password"));
			List<Role> roles = new ArrayList<Role>();
                        Role role = new Role();
                        role.setName((String)data.get("role"));
                        roles.add(role);
                        u.setRoles(roles);
//			List<HashMap<String, Object>> dataRole = (List<HashMap<String, Object>>) data.get("role");
//			for (Map<String , Object> datas  : dataRole) {
//				Role role = new Role();
//				role.setId((Integer)datas.get("ID"));
//				role.setName((String) datas.get("NAME"));
//				roles.add(role);
//			}
			//System.out.println(dataRole);
			//u.setRoles(roles);
			
			System.out.println(map);
			return u;
		}
		return null;
    }   
}
