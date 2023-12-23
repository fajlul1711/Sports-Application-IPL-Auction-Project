package IPL.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import IPL.Dto.Management;
import IPL.Dto.Player;
import IPL.Dto.Team;

//@org.springframework.stereotype.Controller
@RestController
public class Controller {
	
	
	@Autowired//it will act like vehicle and it will bring the object from the Respective class
	Management management;//fresh copy of object
	
	@Autowired
	Player player;
	
	@Autowired
	Team team;
	
	
	@RequestMapping("signup")
	public ModelAndView signup(@RequestParam String role) //requestparam act like getparameter fetch the data from the frontend
	{
		ModelAndView modelAndView= new ModelAndView(); //here ModelAndView--> model means Object and view means Forntend  here the work of ModelAndView nothing but carrying the object to the fornt end (to the jsp)
		
		if(role.equals("management")) {
			
			modelAndView.addObject("management", management); //here object will sotre in key and value formate
			modelAndView.setViewName("managementsignup.jsp");
		//
			return modelAndView;//here we want to return or carry anything to the front end finally i should return the reference variable
			
		}else if(role.equals("player")) {
			modelAndView.addObject("player", player); //here object will sotre in key and value formate
			modelAndView.setViewName("playersignup.jsp");
		
		}
		else {
			modelAndView.addObject("team", team); //here object will sotre in key and value formate
			modelAndView.setViewName("teamsignup.jsp");
			
		}
		return modelAndView;
		
	}
}
