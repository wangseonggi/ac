package com.example.ac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

    @RequestMapping(value = "toHome")
    public String toHome() {
        return "home";
    }
}
