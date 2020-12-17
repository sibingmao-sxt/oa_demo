package com.sxt.oa_demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DefaultController {

	@RequestMapping("/")
	public String login() {
		System.out.println("==========login");
		return "login";
	}
}
