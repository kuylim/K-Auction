/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;

/**
 *
 * @author User
 */
@Configuration
@EnableWebMvcSecurity
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter{

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("user").password("123").roles("USER");
                
	}
        
        @Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
			.antMatchers("/" , "/home" , "/about").permitAll()
			.antMatchers("/admin/**").hasRole("ADMIN")
			.antMatchers("/shop/**").hasRole("USER")
			.antMatchers("/dba/**").hasAnyRole("ADMIN","USER" , "DBA")
			.antMatchers("/swagger/**").hasAnyRole("ADMIN","USER" , "DBA", "DEVELOPER");
		http
			.formLogin()
			.loginPage("/login")
			.usernameParameter("username")
			.passwordParameter("password")
			.permitAll();
//			.failureHandler(ajaxAuthenticationFailureHandler)
//			.successHandler(ajaxAuthenticationSuccessHandler);
		
		http.csrf().disable();
		http.exceptionHandling().accessDeniedPage("/access-denied");
	}
}
