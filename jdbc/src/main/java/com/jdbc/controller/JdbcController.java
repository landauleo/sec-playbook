package com.jdbc.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class JdbcController {

    @GetMapping("/public")
    public String getTest1() {
        return "Hello, Yahweh!";
    }

    @GetMapping("/private")
    public String getTest2() {
        return "Hello, Hannah!";
    }

    @GetMapping("/expert")
    public String getTest3() {
        return "Hello, expert!";
    }

}