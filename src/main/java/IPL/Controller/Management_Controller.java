package IPL.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import IPL.Dao.ManagementDao;
import IPL.Dto.Management;

//@Controller

@RestController //it will do the work of controller also and response body also.
public class Management_Controller {
	
	@Autowired
	ManagementDao managementDao;
	
	@RequestMapping("managementsignup")
	@ResponseBody //if we want to show output in front end 
	public ModelAndView save(@ModelAttribute Management management) {
		managementDao.saveManagement(management);
		
	ModelAndView modelAndView	= new ModelAndView();
	modelAndView.addObject("msg","Management account got created");
	
	modelAndView.setViewName("index.jsp");
	
	return modelAndView;
		
	}
	
	@RequestMapping("managementlogin")
	//@ResponseBody//not requared it because of @restController
	public ModelAndView managementLogin(@RequestParam String username, @RequestParam String password) {
		Management management =managementDao.managementLogin(username);
		
		ModelAndView modelAndView = new ModelAndView();
		if (management==null) {
			modelAndView.addObject("msg", "Entered Invalid Username");
			modelAndView.setViewName("managementlogin.jsp");
			
		
		}else {
			if(management.getPassword().equals(password)) {
				modelAndView.addObject("msg", "Management Login Successfully");
				modelAndView.setViewName("managementhome.jsp");
			}else {
				modelAndView.addObject("msg", "Entered Invalid Password");
				modelAndView.setViewName("managementlogin.jsp");
			}
		}
		return modelAndView;
	}
	
	//for logout the sessions
	
	@RequestMapping("managementlogout")
	 public ModelAndView logout(SessionStatus sessionStatus) {
        // Invalidate the session
        sessionStatus.setComplete();
        
    	ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("msg", "Management Logout Successfully");
		modelAndView.setViewName("index.jsp");
		return modelAndView;
    }
	
}
