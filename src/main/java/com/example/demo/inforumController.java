package com.example.demo;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class inforumController {

		
	@RequestMapping("/")
	public String mtdIndex() {
		return "index";
	}
	
	@RequestMapping("/headerTmp")
	public String mtdHeaderTmp() {
		return "headerTmp";
	}



}
