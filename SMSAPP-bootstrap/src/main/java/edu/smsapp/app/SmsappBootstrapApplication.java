package edu.smsapp.app;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@EntityScan
@EnableJpaRepositories
@SpringBootApplication
public class SmsappBootstrapApplication {

	public static void main(String[] args) {
		SpringApplication.run(SmsappBootstrapApplication.class, args);
		System.out.println("testing forking");
	}

}
