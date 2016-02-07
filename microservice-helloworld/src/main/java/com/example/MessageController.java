package com.example;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RefreshScope
@RestController
@EnableAutoConfiguration
public class MessageController {

	@Value("${homeController.index.title}")
	private String nombre;
	
	@Value("${navigation.menu.home}")
	private String nombre1;

	@RequestMapping("/")
	ResponseEntity<Message> home() {
		return new ResponseEntity(new Message("Hello " + nombre + nombre1), HttpStatus.ACCEPTED);
	}
}