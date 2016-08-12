/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.service.impl;

import org.khmeracademy.btb.auction.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author KUYLIM
 */
@Service("CustomUserDetailService")
public class CustomUserDetailService implements UserDetailsService{

    @Autowired
	private User_serviceImpl userService;
    
    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userService.findUserByEmail(email);
		if(user == null){
			System.out.println("User not found");
			throw new UsernameNotFoundException("User not found");
		}
//		System.out.println(user.getRoles().get(0).getName());
		return user;
	}
    
    
}
