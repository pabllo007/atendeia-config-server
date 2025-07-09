package com.atendeia.config_server_atendeia;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;

@SpringBootApplication
@EnableConfigServer
public class ConfigServerAtendeiaApplication {

	public static void main(String[] args) {
		SpringApplication.run(ConfigServerAtendeiaApplication.class, args);
	}

}
