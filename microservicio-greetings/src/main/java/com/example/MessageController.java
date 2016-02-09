package com.example;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
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
        //ResponseEntity<Product[]> responseEntity = restTemplate.getForEntity("http://localhost:9000/inicio", Product[].class);
        //Product[] product = responseEntity.getBody();
        
        String request = "{\"id\": 1,\"guid\": \"vasvsav\",\"pk\": null,\"name\":\"product1\",\"value\": "
        		+ "null,\"timeStampCreated\": 0,\"timeStampLastUpdated\": 0,\"counter_lastupdate\": 1}";
        
        HttpHeaders headers = new HttpHeaders();
        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.add("header1", "value");
        HttpEntity<String> entity = new HttpEntity<String>(request.toString(),headers);
       // restTemplate.put("http://localhost:9000/inicio", entity);
        Product[] products = restTemplate.postForObject( "http://localhost:9000/inicio", entity, Product[].class );  
        
        
		return new ResponseEntity(products, HttpStatus.ACCEPTED);
	}
}