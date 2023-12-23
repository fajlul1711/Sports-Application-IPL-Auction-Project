package IPL.Helper;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration //here by using This Annotation we will do configuration of our project.

//@ComponentScan("IPL.Controller")
//@ComponentScan("IPL.Dao")
//@ComponentScan("IPL.Dto")
//@ComponentScan("IPL.Helper")

@ComponentScan("IPL")//here all base-package are present internally
public class My_Config {
	
	@Bean //it will help to create reference variable of interface type
public EntityManagerFactory getEntityManagerFactory() {
	
	EntityManagerFactory enetiEntityManagerFactory = Persistence.createEntityManagerFactory("dev");
	
	return enetiEntityManagerFactory;
}
}
