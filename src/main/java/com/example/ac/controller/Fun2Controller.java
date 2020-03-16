package com.example.ac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("fun2")
public class Fun2Controller {

    @RequestMapping(value = "/fun_a")
    public String Fun1() {
        return "fun2/fun_a";
    }
}
