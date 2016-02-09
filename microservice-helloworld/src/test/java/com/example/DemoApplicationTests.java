package com.example;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.dao.ProductDao;

import com.example.model.Product;


@RunWith(SpringJUnit4ClassRunner.class)
@SpringApplicationConfiguration(classes = DemoApplication.class)
public class DemoApplicationTests {

	@Autowired
	ProductDao productDao;
	
	@Test
	public void contextLoads() {
		
	}
	
	@Test
	public void listProduct(){
		List<Product> product = productDao.lstProduct();
		assertNotNull(product);
	}

}
