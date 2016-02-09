package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.example.model.Product;
import com.example.service.ProductService;


@RefreshScope
@RestController
@EnableAutoConfiguration
public class MessageController {

	@Value("${nombre}")
	private String nombre;
	
	@Autowired
	ProductService productService;

	@RequestMapping("/inicio")
	ResponseEntity <List<Product>> getProduct() {
		System.out.println("sfsdf");
		return new ResponseEntity(productService.lstProduct(), HttpStatus.ACCEPTED);
	}

}