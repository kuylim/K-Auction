/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.entity;

import org.springframework.security.core.GrantedAuthority;

/**
 *
 * @author KUYLIM
 */
public class Role implements GrantedAuthority{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String key;
	private String name;
	
	public Role() {
		key = "";
		name = "";
	}
	/**
	 * @param key
	 * @param name
	 */
	public Role(String key, String name) {
		super();
		this.key = key;
		this.name = name;
	}
	/**
	 * @return the key
	 */
	public String getKey() {
		return key;
	}
	/**
	 * @param key the key to set
	 */
	public void setKey(String key) {
		this.key = key;
	}
	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}
	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return name;
	}

}

