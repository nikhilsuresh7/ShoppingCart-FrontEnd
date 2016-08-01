package com.nikhil.beatme.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

//import com.nikhil.beatme.dao.CategoryDAO;
import com.nikhil.beatme.dao.UserDAO;
//import com.nikhil.beatme.model.Category;
import com.nikhil.beatme.model.User;

@Controller
public class UserController {
	
	@Autowired
	UserDAO userDAO;
	
	@Autowired
	User user;
/*
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private Category category;
*/
	
	@RequestMapping("/login")
	public ModelAndView login(@RequestParam(value = "name") String userID,
			 @RequestParam(value = "password") String password,
			HttpSession session) {
		
		ModelAndView mv = new ModelAndView("/home");
		boolean isValidUser = userDAO.isValidUser(userID, password);
		
		if (isValidUser == true) {
			System.out.println("Logged In");
			user = userDAO.get(userID);
			session.setAttribute("loggedInUser", user.getName());
			if (user.getAdmin() == 1) {
				System.out.println("Admin");
				mv.addObject("isAdmin", "true");
			} else {
				System.out.println("User");
				mv.addObject("isAdmin", "false");
			}
		} else {
			System.out.println("Invalid Credentials");
			mv.addObject("invalidCredentials", "true");
			mv.addObject("errorMessage", "Invalid Credentials");
		}
		
		return mv;
	}
	
	@RequestMapping("/logout")
	public ModelAndView logout(HttpServletRequest request, HttpSession session) {
		ModelAndView mv = new ModelAndView("/home");
		session.invalidate();
		session = request.getSession(true);
//		session.setAttribute("category", category);
//		session.setAttribute("categoryList", categoryDAO.list());
		
		mv.addObject("logoutMessage", "You are successfully logged out");
		mv.addObject("loggedOut", "true");
		
		return mv;
	}

}
