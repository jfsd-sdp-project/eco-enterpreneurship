package com.klef.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;

@SpringBootApplication
@EnableConfigurationProperties({
    Form.class
})
public class SpringBootwithFormHandlingApplication {

	public static void main(String[] args) {
		
		SpringApplication.run(SpringBootwithFormHandlingApplication.class, args);
	}

}
