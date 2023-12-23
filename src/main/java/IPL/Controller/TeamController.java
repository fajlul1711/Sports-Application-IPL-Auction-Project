package IPL.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import IPL.Dao.TeamDao;
import IPL.Dto.Player;
import IPL.Dto.Team;

//@Controller
@RestController
public class TeamController {

	@Autowired
	TeamDao teamDao;
	
	@RequestMapping("teamsignup")
	public ModelAndView teamSignup(@ModelAttribute Team team) {
		
		teamDao.teamSignup(team);
		
		ModelAndView modelAndView= new ModelAndView();
		modelAndView.addObject("msg", "Team Account got Created Successfully");
		modelAndView.setViewName("index.jsp");
		
		return modelAndView;
		
	}
	
	@RequestMapping("teamlogin")
	public ModelAndView teamLogin(@RequestParam String username, String  password, HttpSession httpSession) {
		
		
		Team team=teamDao.teamLogin(username);
		
		ModelAndView modelAndView = new ModelAndView();
		if(team==null) {
			modelAndView.addObject("msg", "Entered Invalid Username");
			modelAndView.setViewName("teamlogin.jsp");
		}else {
			if(team.getPassword().equals(password)) {
				if(team.isStatus()) {
					
					httpSession.setAttribute("team", team);//here i am setting data by using session tracking for future Use
					modelAndView.addObject("msg", "Team Login Success");
					modelAndView.setViewName("teamhomepage.jsp");
				}else {
					modelAndView.addObject("msg", "Wait For Management Approval");
					modelAndView.setViewName("managementlogin.jsp");
				}
				
				
			}else {
				modelAndView.addObject("msg", "Entered Invalid Password");
				modelAndView.setViewName("teamlogin.jsp");
			}
		}
		
		return modelAndView;
	}
	@RequestMapping("viewallteam")
	public ModelAndView viewAllTeam() {
	List<Team> teams	= teamDao.viewAllTeam();
	
	ModelAndView modelAndView= new ModelAndView();
	if(teams.isEmpty()) {
		modelAndView.addObject("msg", "No Team are Available");
		modelAndView.setViewName("managementhome.jsp");
	}else {
		modelAndView.addObject("teams", teams);
		modelAndView.setViewName("viewallteam.jsp");
		
	}
	return modelAndView;
	
	}
	@RequestMapping("changestatus")
	public ModelAndView changestatus(@RequestParam ("id") int teamid) {
		
	Team team=	teamDao.changestatus(teamid);
	ModelAndView modelAndView = new ModelAndView();
			
	if(team.isStatus()) {
		
		team.setStatus(false);
		
	}else 
		
		team.setStatus(true);
		
	
	teamDao.update(team);
	modelAndView.addObject("msg", "Team status Got Updated");
	modelAndView.setViewName("managementhome.jsp");
	
		return modelAndView;
	}
	
	@RequestMapping("addamount")
	public ModelAndView addAmmountForTheTeam(@RequestParam double amount, @RequestParam int id) {
		Team team= teamDao.addAmountForTeam(id);
		team.setWallet(team.getWallet()+amount);
		teamDao.update(team);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("msg","amount has been added by management succesfully");
		modelAndView.setViewName("managementhome.jsp");
		return modelAndView;
	}
	
	@RequestMapping("viewteam")
	public ModelAndView view_players_inside_the_team(HttpSession httpSession) {
		
	Team team=	(Team) httpSession.getAttribute("team");
	
	List<Player> players= team.getList();//here we are going to get the information of players who has been sold out for particular team
	
	ModelAndView modelAndView= new ModelAndView();
	
	if(players.isEmpty()) {
		
		modelAndView.addObject("teamname", team.getName());
		modelAndView.addObject("msg", "No Player has been Bought by in this team");
		modelAndView.setViewName("viewMyTeam.jsp");
	}else {
		
		modelAndView.addObject("teamname", team.getName());
		modelAndView.addObject("players", players);
		modelAndView.setViewName("viewMyTeam.jsp");
		
	}
	
	return modelAndView;
	
	
		
	}
	

	//this method is just used to redirect for the same page with value
	 
	@RequestMapping("teamhomedummy")
	public ModelAndView teamhomeDummy(HttpSession httpSession) {
		
	Team team=	(Team) httpSession.getAttribute("team");
		ModelAndView modelAndView = new ModelAndView();
		
		//modelAndView.addObject("teamName", team.getName());
		
		modelAndView.setViewName("teamhomepage.jsp");
		
		return modelAndView;
		
	}
	
	@RequestMapping("viewteambyname")
	public ModelAndView viewTeamByName() {
		
		List<Team> teams= teamDao.getAllTeam();
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("teams",teams);
		modelAndView.setViewName("viewTeamByName.jsp");
		return modelAndView;
	}
	
	@RequestMapping("fetchusingteamname")
	public ModelAndView fetchusingteamname(@RequestParam String name) {
		List<Team> list =	teamDao.getAllTeamByName(name);
		
		Team team=	list.get(0);
		
		
		List<Player> players = team.getList();
		
		ModelAndView modelAndView= new ModelAndView();
		
		modelAndView.addObject("players",players);
			
		modelAndView.setViewName("viewMyTeam.jsp");
		
		return modelAndView;
		
		
	}
	
	//for logout the sessions
	
		@RequestMapping("teamlogout")
		 public ModelAndView logout(HttpSession httpSession) {
	        // Invalidate the session
	        httpSession.invalidate();
	        
	    	ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("msg", "Team Logout Successfully");
			modelAndView.setViewName("index.jsp");
			return modelAndView;
	    }
	
	 
	
}
