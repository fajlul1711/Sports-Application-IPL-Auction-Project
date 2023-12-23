	package IPL.Controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import IPL.Dao.PlayerDao;
import IPL.Dao.TeamDao;
import IPL.Dto.Player;
import IPL.Dto.Team;

@RestController
public class Player_Controller {
	
//	@Autowired
//	Player player;
	
	@Autowired
	PlayerDao playerDao;
	
	@Autowired
	TeamDao teamDao;
	
	@RequestMapping("playersignup")
	public ModelAndView playerSignup(@ModelAttribute Player player, @RequestParam  String username) {
		
		
		List<Player> list1= playerDao.fetch(username);
		
		if(list1.isEmpty()) {
		
		player.setStatus("pending");
		
		playerDao.playerSignup(player);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("msg","Player Account Got created Successfully");
		modelAndView.setViewName("index.jsp");
		return modelAndView;
		}else {
			ModelAndView modelAndView = new ModelAndView();
			
			modelAndView.addObject("msg","Player Account Already Existed");
			modelAndView.setViewName("index.jsp");
			return modelAndView;
		}
		
	}
	
	@RequestMapping("playerlogin")
	public ModelAndView playerLogin(@RequestParam  String username, String password, HttpSession httpSession ) {
		
	Player player=	playerDao.playerLogin(username);
		
		ModelAndView modelAndView= new ModelAndView();
		if(player==null) {
			modelAndView.addObject("msg", "Invalid Username");
			modelAndView.setViewName("playerlogin.jsp");
		}else {
			httpSession.setAttribute("player", player);//here it is used to take the current user information to edit purpose or to update purpose
			
			if(player.getPassword().equals(password)) {
				modelAndView.addObject("msg", "Player Login Successfully");
				modelAndView.setViewName("playerhome.jsp");
				
			}else {
				modelAndView.addObject("msg", "Invalid Password");
				modelAndView.setViewName("playerlogin.jsp");
				
			}
		}
		return modelAndView;
		
	}
	
	@RequestMapping("editplayer")
	public ModelAndView editplayerInfo(HttpSession httpSession) {
	 Player player= (Player) httpSession.getAttribute("player");
	 
	 ModelAndView modelAndView= new ModelAndView();
	 modelAndView.addObject("player", player);
	 modelAndView.setViewName("editplayer.jsp");
	 
	 return modelAndView;
	}
	
	@RequestMapping("playerupdate")
	public ModelAndView updatePlayer(@ModelAttribute Player player) {
		playerDao.playerupdate(player);
		 ModelAndView modelAndView= new ModelAndView();
		 modelAndView.addObject("msg", "Player data has been edited Successfully");
		 modelAndView.setViewName("playerhome.jsp");
		
		 return modelAndView;
		
	}
	
	@RequestMapping("viewplayers")
	public ModelAndView viewPlayer(@RequestParam ("id") int tid) {
		Team team= teamDao.viewPlayerOfRespective_team(tid);
		
		List<Player> players= team.getList();
		
		ModelAndView modelAndView = new ModelAndView();
		if(players.isEmpty()) {
			modelAndView.addObject("msg", "No players are Available inside this Team");
			modelAndView.addObject("teamname", team.getName());
			modelAndView.setViewName("ViewTeamPlayers.jsp");
		}else {
			
			modelAndView.addObject("players", players);
			modelAndView.addObject("teamname", team.getName());
			modelAndView.setViewName("ViewTeamPlayers.jsp");
			
		}
		return modelAndView;
		
	}
	
	@RequestMapping("viewallplayers")
	public ModelAndView viewAllPlayersForAuction() {
	List<Player> players=	playerDao.viewAllPlayersForAuction();
	
	ModelAndView modelAndView= new ModelAndView();
	
	if(players.isEmpty()) {
		modelAndView.addObject("msg", "No Player are Available for Auction");
		modelAndView.setViewName("managementhome.jsp");
	}
	else {
		modelAndView.addObject("players",players);
		modelAndView.setViewName("view_all_players.jsp");
	}
	return modelAndView;
	}
	
	
	@RequestMapping("changeplayerstatus")
	public ModelAndView changeplayerstatus(@RequestParam  int id) {
		
		ModelAndView modelAndView= new ModelAndView();
		
	Player player =	playerDao.changeplayerstatus(id);
	
	if(player.getStatus().equals("pending")) {
		
		player.setStatus("Available");
		
	}else {
		
		player.setStatus("pending");
	}
	
	
	
	playerDao.playerupdate(player);
	
	List<Player> players= playerDao.viewAllPlayersForAuction();
	
	modelAndView.addObject("players",players);
	
	modelAndView.addObject("msg", "player status has been Updated");
	
	modelAndView.setViewName("view_all_players.jsp");
	
	return modelAndView;
	
	}
	
	
	@RequestMapping("viewavailableplayers")
	public ModelAndView viewPlayersWhoareavailableForAuction(HttpSession httpSession) {
		
	Team team=	(Team) httpSession.getAttribute("team");
	
	List<Player> players =	playerDao.viewAvailblePlayers();
	
	ModelAndView modelAndView= new ModelAndView();
	
	if(players.isEmpty()) {
		
		modelAndView.addObject("msg", "No Players Are available to buy");
		modelAndView.setViewName("teamhomepage.jsp");
		
	}else {
		
		modelAndView.addObject("players", players);
		modelAndView.setViewName("buyPlayers.jsp");
		
	}

	return modelAndView;
	
		
	}
	
	@RequestMapping("buyplayer")
	public ModelAndView buyPlayer(@RequestParam int id, HttpSession httpSession) {
		
		Team team=	(Team) httpSession.getAttribute("team");
		
	Player player= 	playerDao.buyPlayer(id);
	
	ModelAndView modelAndView= new ModelAndView();
	
	if(player.getPrice()>team.getWallet()) {
		
		modelAndView.addObject("msg", "Insufficient Balance");
		modelAndView.setViewName("teamhomepage.jsp");
		
	}else {
		
		team.setWallet(team.getWallet()-player.getPrice());
		
		player.setStatus("Sold_out");
		player.setTeam(team);
		
		List<Player>players	= team.getList();
		
		players.add(player);//old existing player plus now buying player add also
		team.setList(players);
		
		teamDao.update(team);
		
		playerDao.playerupdate(player);
		
		modelAndView.addObject("msg", "Player Has been Bought Successfully");
		modelAndView.setViewName("teamhomepage.jsp");
		
		
	}
	
	return modelAndView;
		
		
	}
	
	//****---check player status my logic --***
	
	@RequestMapping("checkPlayerStatus")
	public ModelAndView checkPlayerStatus( HttpSession httpSession) {
	
		//Team team= teamDao.viewPlayerteamName(id);
		
		//List<Player> players= team.getList();
		
		 Player player= (Player) httpSession.getAttribute("player");
		Team team = player.getTeam();
		
		ModelAndView modelAndView = new ModelAndView();
		if(player.getStatus().equals("Sold_out")) {
			modelAndView.addObject("msg", "Successfully Sold for "+team.getName()+" Team");
			//modelAndView.addObject("teamName", player.getTeam());)
			//modelAndView.addObject("teamname", team.getName());
			modelAndView.setViewName("playerStatus.jsp");
		}else {
			
			//modelAndView.addObject("players", players);
			//modelAndView.addObject("teamname", team.getName());
			modelAndView.addObject("msg", "Still you are in the pending list");
			modelAndView.setViewName("playerStatus.jsp");
			
		}
		return modelAndView;
		
	}
	
	//for logout the sessions
	
		@RequestMapping("playerlogout")
		 public ModelAndView logout(SessionStatus sessionStatus) {
	        // Invalidate the session
	        sessionStatus.setComplete();
	        
	    	ModelAndView modelAndView = new ModelAndView();
	        modelAndView.addObject("msg", "Player Logout Successfully");
			modelAndView.setViewName("index.jsp");
			return modelAndView;
	    }
	
}
