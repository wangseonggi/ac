package com.example.ac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("fun3")
public class Fun3Controller {

    @RequestMapping(value = "/fun_a")
    public String Fun1() {
        return "fun3/fun_a";
    }
}
