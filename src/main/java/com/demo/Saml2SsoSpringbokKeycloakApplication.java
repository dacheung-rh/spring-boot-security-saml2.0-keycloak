package com.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Saml2SsoSpringbokKeycloakApplication {

	public static void main(String[] args) {

		System.setProperty("javax.net.debug", "all");
		SpringApplication.run(Saml2SsoSpringbokKeycloakApplication.class, args);
	}

}
