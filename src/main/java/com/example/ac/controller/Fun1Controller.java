package com.example.ac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("fun1")
public class Fun1Controller {

    @RequestMapping(value = "/fun_a")
    public String Fun1() {
        return "fun1/fun_a";
    }
}
