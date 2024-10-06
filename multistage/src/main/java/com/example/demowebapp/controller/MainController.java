package com.example.demowebapp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {

    @GetMapping(value = "/hello")
    public String hello(){
        return "hello!!";
    }
}
