package com.example.controller;

import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.model.Person;

@Controller
@RefreshScope
@EnableAutoConfiguration
public class PersonController {

	@RequestMapping("/person")
	public String person(Model model){
		Person person = new Person();
		person.setAge(2);
		person.setFirstName("diego");
		person.setLastName("aguirre");
		model.addAttribute("person",person);
		
		return "home/index";
	}
}