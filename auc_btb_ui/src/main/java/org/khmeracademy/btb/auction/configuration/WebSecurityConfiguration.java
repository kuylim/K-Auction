/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.config.annotation.web.servlet.configuration.EnableWebMvcSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;

/**
 *
 * @author User
 */
@Configuration
@EnableWebMvcSecurity
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter{

        @Autowired
	@Qualifier(value="CustomUserDetailService")
	private UserDetailsService userDetailsService;
        
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
//		auth.inMemoryAuthentication().withUser("user").password("123").roles("USER");
                auth.userDetailsService(userDetailsService);
	}
        
        @Override
	protected void configure(HttpSecurity http) throws Exception {
		http
			.authorizeRequests()
			.antMatchers("/" , "/index" , "/about").permitAll()
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
