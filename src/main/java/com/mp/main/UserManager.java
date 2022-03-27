package com.mp.main;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;

public class UserManager {
	 protected SessionFactory sessionFactory;
	 
	    protected void setup() {
	        // code to load Hibernate Session factory
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
	 
	    protected void create(User user) {
	        // code to save a book
	    	User userMngr = new User();
	    	userMngr = user;
	    	Session session = sessionFactory.openSession();
	    	session.beginTransaction();
	    	session.save(userMngr);
	    	session.getTransaction().commit();
	    	session.close();
	    }
	 
	    protected void read() {
	        // code to get a book
	    	Session session = sessionFactory.openSession();
	    	session.beginTransaction();
	    	session.getTransaction().commit();
	    	session.close();
	    }
	 
	    protected void update() {
	        // code to modify a book
	    	Session session = sessionFactory.openSession();
	    	session.beginTransaction();
	    	
	    	session.getTransaction().commit();
	    	session.close();
	    }
	 
	    protected void delete() {
	        // code to remove a book
	    	Session session = sessionFactory.openSession();
	    	session.beginTransaction();
	    	
	    	session.getTransaction().commit();
	    	session.close();
	    }
	    
	    public User getUser(String email) {
	    	setup();
	    	User user = new User();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
		    	user = (User) session.createQuery("from User where email = :email").setParameter("email", email).getSingleResult();
		    	session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	return user;
	    }
	    
		public List<User> getUsersList(int role) {
			setup();
			List<User> users = new ArrayList<User>();
			try(Session session = sessionFactory.openSession()){
				session.beginTransaction();
				users = session.createQuery("FROM User where role=:role").setParameter("role", role).list();
				for(int i = 0; i < users.size(); i++) {
			    	System.out.println(users.get(i).getNom());
			    }
				session.getTransaction().commit();
			} catch (Exception e) {
				e.printStackTrace();
			}
		    return users;
	    }
	    
	    public boolean validate(String email, String password) {
	    	setup();
	        try (Session session = sessionFactory.openSession()) {
	        	User user = new User();
	            // start a transaction
	            session.beginTransaction();
	            // get an user object
	            user = (User) session.createQuery("FROM User WHERE email=:email").setParameter("email", email)
	                .uniqueResult();
	            System.out.println(user.getEmail());
	            if (user != null && user.getPassword().equals(password)) {
	                return true;
	            }
	            // commit transaction
	            session.getTransaction().commit();
	        } catch (Exception e) {
	        	System.out.println("stack :");
	        	e.printStackTrace();
	        }
	        return false;
	    }
}
