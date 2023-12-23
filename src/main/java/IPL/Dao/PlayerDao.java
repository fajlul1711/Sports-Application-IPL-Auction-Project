package IPL.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;

import IPL.Dto.Management;
import IPL.Dto.Player;
import net.bytebuddy.asm.Advice.Return;

@Component
public class PlayerDao {
	@Autowired
	EntityManagerFactory entityManagerFactory;
	
	public void playerSignup(Player player) {
		 EntityManager entityManager	= entityManagerFactory.createEntityManager();
		 EntityTransaction entityTransaction= entityManager.getTransaction();
		 
		 entityTransaction.begin();
		 entityManager.persist(player);
		 entityTransaction.commit();
	}
	
	public Player playerLogin( String username) {
		
			EntityManager entityManager	= entityManagerFactory.createEntityManager();
			//List<Management> list= query.getResultList();
			List<Player> list=entityManager.createQuery("select x from Player x where username=?1").setParameter(1, username).getResultList();
			
			
			
			if (list.isEmpty()) {
				return null;
			}else {
				return list.get(0);
			}
			
		
	}
	
	
	public void playerupdate(Player player) {
		EntityManager entityManager	= entityManagerFactory.createEntityManager();
		 EntityTransaction entityTransaction= entityManager.getTransaction();
		 
		 entityTransaction.begin();
		 entityManager.merge(player);
		 entityTransaction.commit();
	}
	
	
	public List<Player> viewAllPlayersForAuction() {
		
		EntityManager entityManager	= entityManagerFactory.createEntityManager();
		
		List<Player> list=	entityManager.createQuery("select x from Player x").getResultList();
		
		return list;
	}
	
	public Player changeplayerstatus(int id) {
		EntityManager entityManager	= entityManagerFactory.createEntityManager();
		
		Player player=	entityManager.find(Player.class, id);
		
		return player;
		
	}
	
public List<Player> viewAvailblePlayers() {
		
		EntityManager entityManager	= entityManagerFactory.createEntityManager();
		
		List<Player> list=	entityManager.createQuery("select x from Player x where status='Available'").getResultList();
		
		return list;
		
	}
	
	public Player buyPlayer(int id) {
		
		EntityManager entityManager	= entityManagerFactory.createEntityManager();
		
	Player player=	entityManager.find(Player.class, id);
	
	return player;
		
	}
	
	/****duble player**/
	
	public List<Player> fetch(String username){
		EntityManager entityManager	= entityManagerFactory.createEntityManager();
		
		List<Player> list= entityManager.createQuery("select x from Player x where username=?1").setParameter(1,  username).getResultList();
		
		return list;
		
	}
	
	
	
}
