package com.vishwa.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.vishwa.pojo.Visitor;

@Controller
public class HomeController {

	@RequestMapping("/add")
	public ModelAndView add() {
		System.out.println("in HomeController controller");

		ModelAndView mv = new ModelAndView();
		mv.setViewName("Home.jsp");
		mv.addObject("result", "vishwa");
		return mv;
	}

	@RequestMapping("/vishwaResume")
	public ModelAndView navigateToVishwaResume() {
		System.out.println("in HomeController navigateToVishwaResume");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("vishwaResume.jsp");
		mv.addObject("result", "vishwa");
		return mv;
	}

	@RequestMapping("/saveVisitorInfo")
	public void saveVisitorInfo(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("in HomeController saveVisitorInfo");

		// 1. get received JSON data from request
		BufferedReader br;
		try {
			br = new BufferedReader(new InputStreamReader(request.getInputStream()));
			String json = "";
			if (br != null) {
				json = br.readLine();
			}
			// 2. initiate jackson mapper
			ObjectMapper mapper = new ObjectMapper();
			// 3. Convert received JSON to Article
			Visitor visitorObj = mapper.readValue(json, Visitor.class);
			System.out.println("visitorObj" + visitorObj.getVisitorDevice());
			
			response.setContentType("application/json");
			mapper.writeValue(response.getOutputStream(), "success");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
