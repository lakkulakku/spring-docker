package com.example.ju0;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
	
	@GetMapping
	public String hello() {
		return "Hello World! Application is running";
	}
}
