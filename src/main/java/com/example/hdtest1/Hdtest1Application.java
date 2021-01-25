package com.example.hdtest1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

@SpringBootApplication
@RestController
public class Hdtest1Application {

	public static void main(String[] args) {
		SpringApplication.run(Hdtest1Application.class, args);
	}
	@GetMapping("/getdate1")
	public String getdate(){

		Date date = new Date() ;

		return String.format(" --> This is hdtest1 v2: " + date.toString() + " <-- \n");

	}
}
