/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.service;

import org.khmeracademy.btb.auction.entity.User;

/**
 *
 * @author KUYLIM
 */
public interface User_service {
    public User findUserByEmail(String userEmail);
}
