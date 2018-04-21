/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.khmeracademy.btb.auction.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.http.converter.json.MappingJackson2HttpMessageConverter;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.SimpleUrlAuthenticationSuccessHandler;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author KUYLIM
 */
@Configuration
@PropertySource(
		value={"classpath:configuration.properties"}
)
public class WebConfiguration {
    @Autowired
	private Environment environment;
	
//	@Bean
//	public HttpHeaders header(){
//		HttpHeaders headers = new HttpHeaders();
//		headers.setContentType(MediaType.APPLICATION_JSON);
//		String credentials = environment.getProperty("KHMERACADEMY.API.SECRET_HEADER");
//		headers.set("Authorization", "Basic " + credentials);
//		return headers;
//	}
    
        
	
	@Bean
	public RestTemplate restTemplate(){
		RestTemplate restTemplate = new RestTemplate();
		// Add the Jackson and String message converters
		restTemplate.getMessageConverters().add(new MappingJackson2HttpMessageConverter());
		restTemplate.getMessageConverters().add(new StringHttpMessageConverter());
		return restTemplate;
	}
	
	@Bean
	public String WS_URL(){
		return environment.getProperty("AUCTION.API.URL");
	}
	
	@Bean
	public String WEB_UI_URL(){
		return environment.getProperty("AUCTION.URL");
	}
	
	
//	@Bean
//	public String KEY(){
//		return environment.getProperty("KHMERACADEMY.API.SECRET_HEADER");
//	}
}
