package com.halloword.hallo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hallo")
public class HalloController {

	@GetMapping("/hallo")
	public String getHallo() {
		return "Mentalidades : Persistencia e crescimento";
	}
	
	@GetMapping("/hallo2")
	public String getHallo2() {
		return "Objetivo: Aprender de força efetiva a utilizar o Spring Boot, para ajudar meu grupo no projeto final !";	}
}
