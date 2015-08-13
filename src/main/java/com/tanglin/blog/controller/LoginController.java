package com.tanglin.blog.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Thinkpad on 2015/7/28.
 */
@Controller
public class LoginController {

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login(){
        return "static/login";
    }
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String loginSubmit(@RequestParam(value = "username",required = true)String username,
                        @RequestParam(value = "password",required = true)String password){
        return "account/index";
    }
}
