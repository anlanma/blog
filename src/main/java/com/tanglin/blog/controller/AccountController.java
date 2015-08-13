package com.tanglin.blog.controller;

import java.util.List;

import javax.annotation.Resource;

import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tanglin.blog.entity.Account;
import com.tanglin.blog.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Resource
	private AccountService accountService;
	public static org.slf4j.Logger log = LoggerFactory.getLogger(AccountController.class);

	@RequestMapping("/index")
	public String index(ModelMap model){
		List<Account> all = accountService.findAll();
		log.info("Request success!");
		return "blog/index";
	}

}
