package com.mp.main;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;


public class UserManager {

	 protected SessionFactory sessionFactory;
	 
	    protected void setup() {
	    	final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
	            .configure() // configures settings from hibernate.cfg.xml
	            .build();
	    try {
	        sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
	    } catch (Exception ex) {
	        StandardServiceRegistryBuilder.destroy(registry);
	    }
	    }
	 
	    protected void exit() {
	        // code to close Hibernate Session factory
	    	
	    	sessionFactory.close();
	    
	    }
	 
	    protected void create() {
	        // code to save a book
	    	
	    	User user = new User();
	    	user.setNom("fatima");
	    	user.setPrenom("elh"); 
	    	user.setAccount_status(0);
	    	user.setEmail("fatima.elh@gmail.com");
	    	user.setPassword("ff");
	    	user.setRole(1);
	    	
	    	
	    	Session session = sessionFactory.openSession();
	        session.beginTransaction();
	     
	        session.save(user);
	     
	        session.getTransaction().commit();
	        session.close();
	    }
	 
	    protected void read() {
	        // code to get a book

		    System.out.print("hi");
	    }
	 
	    protected void update() {
	        // code to modify a book
	    }
	 
	    protected void delete() {
	        // code to remove a book
	    }
	 
	
	
	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		
		 UserManager manager = new UserManager();
		    manager.setup();
		    manager.create();
		    manager.read();
		    manager.exit();
		
		

	}

}
