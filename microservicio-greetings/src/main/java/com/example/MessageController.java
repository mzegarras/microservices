package com.example;

import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.example.model.Product;


@RefreshScope
@RestController
//@EnableAutoConfiguration
public class MessageController {

	@Value("${nombre}")
	private String nombre;

	@RequestMapping("/")
	ResponseEntity<List<Product>> home() {
		RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<Product[]> responseEntity = restTemplate.getForEntity("http://localhost:9000/inicio", Product[].class);

        Product[] product = responseEntity.getBody();
		return new ResponseEntity(product, HttpStatus.ACCEPTED);
	}
}