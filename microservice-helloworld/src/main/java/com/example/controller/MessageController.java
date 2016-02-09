package com.example.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
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

	@RequestMapping(value = "/inicio",method = RequestMethod.POST,  produces = { "application/json" })
	ResponseEntity <List<Product>> getProduct(@RequestHeader HttpHeaders headers,@RequestBody Product product) {
		String head = "";
		List<String> values = headers.get("header1");
		if (values != null) {
			head = (String) values.get(0);
		}
		System.out.println("sas");
		return new ResponseEntity(productService.lstProduct(), HttpStatus.ACCEPTED);
	}

}