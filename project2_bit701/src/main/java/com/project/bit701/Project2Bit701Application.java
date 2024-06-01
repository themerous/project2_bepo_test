package com.project.bit701;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"data.*", "com.project.bit701", "tiles.config"})
@MapperScan("data.mapper")
public class Project2Bit701Application {

	public static void main(String[] args) {
		SpringApplication.run(Project2Bit701Application.class, args);
	}
}
