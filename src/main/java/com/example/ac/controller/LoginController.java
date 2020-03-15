package com.example.ac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }



    @RequestMapping(value = {"/", "/index"})
    public String index() {
        return "index";
    }

//    @RequestMapping(value = "/error")
//    public String error() {
//        return "error";
//    }

}
