package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

// 开启 FeignClients 注解
@EnableFeignClients
@SpringBootApplication
public class OrderServiceFeignApplication {

    public static void main(String[] args) {
        SpringApplication.run(OrderServiceFeignApplication.class, args);
    }

}
