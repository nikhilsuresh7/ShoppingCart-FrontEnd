package com.nikhil.beatme.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nikhil.beatme.dao.CategoryDAO;
import com.nikhil.beatme.dao.UserDAO;
import com.nikhil.beatme.model.Category;
import com.nikhil.beatme.model.User;

@Controller
public class HomeController {
	
	@Autowired
	Category category;

	@Autowired
	User user;
		
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	UserDAO userDAO;

/*	@RequestMapping(value={"","/","home"})*/
	@RequestMapping(value={"/", "/home"})
	public ModelAndView home(){
		ModelAndView mv =new ModelAndView("/home");
		
		return mv;
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute User user) {
		userDAO.saveOrUpdate(user);
		ModelAndView mv  = new ModelAndView("/login");
		mv.addObject("message", "You are successfully registered. Kindly Login.");
		return mv;
	}	
	
	@RequestMapping("/registerHere")
	public ModelAndView registerHere(){
		ModelAndView mv =new ModelAndView("/register");
		mv.addObject("user", user);
		mv.addObject("isUserClickedRegisterHere", "true");
		return mv;
	}
	
	@RequestMapping("/loginHere")
	public ModelAndView loginHere(){
		ModelAndView mv =new ModelAndView("/login");
		mv.addObject("user", new User());
		mv.addObject("isUserClickedLoginHere", "true");
		return mv;
	}
	
}
