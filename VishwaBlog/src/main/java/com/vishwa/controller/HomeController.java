package com.vishwa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/add")
	public ModelAndView add() {
	System.out.println("in controller");
	
	ModelAndView mv=new ModelAndView();
	mv.setViewName("Home.jsp");
	mv.addObject("result", "vishwa");
	return mv;
	}
	
	@RequestMapping("/vishwaResume")
	public ModelAndView navigateToVishwaResume() {
	System.out.println("in controller navigateToVishwaResume");
	
	ModelAndView mv=new ModelAndView();
	mv.setViewName("vishwaResume.jsp");
	mv.addObject("result", "vishwa");
	return mv;
	}

}
