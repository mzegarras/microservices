package com.example.controller;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
@RefreshScope
@EnableAutoConfiguration
@RequestMapping("/")
public class HomeController {

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "home/index";
	}
}
