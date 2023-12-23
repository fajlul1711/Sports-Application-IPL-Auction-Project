package IPL.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import IPL.Dto.Player;
import IPL.Dto.Team;

@Component
public class TeamDao {
	@Autowired
	
	EntityManagerFactory entityManagerFactory;
	
	
	public void teamSignup(Team team) {
		
		EntityManager entityManager= entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction= entityManager.getTransaction();
		
		entityTransaction.begin();
		entityManager.persist(team);
		entityTransaction.commit();
		
	}
	
	public Team teamLogin(String username) {
		EntityManager entityManager	= entityManagerFactory.createEntityManager();
		//List<Management> list= query.getResultList();
		List<Team> list=entityManager.createQuery("select x from Team x where username=?1").setParameter(1, username).getResultList();
		
		
		
		if (list.isEmpty()) {
			return null;
		}else {
			return list.get(0);
		}
	}
	
	
	public List<Team> viewAllTeam() {
	EntityManager entityManager=	entityManagerFactory.createEntityManager();
		List<Team> list=(List<Team>) entityManager.createQuery("select x from Team x").getResultList();
		return list;
	}
	
	public Team viewPlayerOfRespective_team(int tid) {
		EntityManager entityManager=	entityManagerFactory.createEntityManager();
		Team team= entityManager.find(Team.class, tid);
		return team;
	}
	
	
	public Team changestatus(int tid) {
		EntityManager entityManager=	entityManagerFactory.createEntityManager();
		Team team= entityManager.find(Team.class, tid);
		return team;
	}
	
	
	public void update(Team team) {
		EntityManager entityManager= entityManagerFactory.createEntityManager();
		EntityTransaction entityTransaction= entityManager.getTransaction();
		
		entityTransaction.begin();
		entityManager.merge(team);
		entityTransaction.commit();
	}
	
	public Team addAmountForTeam(int id) {
		EntityManager entityManager=	entityManagerFactory.createEntityManager();
		Team team= entityManager.find(Team.class, id);
		return team;
	}
	
	public List<Team> getAllTeam() {
		EntityManager entityManager=	entityManagerFactory.createEntityManager();
		List<Team> list=(List<Team>) entityManager.createQuery("select x from Team x").getResultList();
		return list;		
	}
	
	public List<Team> getAllTeamByName(String name) {
		EntityManager entityManager=	entityManagerFactory.createEntityManager();
		List<Team> list=(List<Team>) entityManager.createQuery("select x from Team x where name=?1").setParameter(1, name).getResultList();
		return list;		
	}
	
	//check player status my logic
	
	public Team viewPlayerteamName(int id) {
		EntityManager entityManager=	entityManagerFactory.createEntityManager();
		Team team= entityManager.find(Team.class, id);
		return team;
		
//		EntityManager entityManager=	entityManagerFactory.createEntityManager();
//		List<Team> list=(List<Team>) entityManager.createQuery("select x from Team x where name=?1").setParameter(1, team_tid).getResultList();
//		return list;	
		
	}
	
}
