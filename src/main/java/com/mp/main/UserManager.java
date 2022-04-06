package com.mp.main;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

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
	    	// A SessionFactory is set up once for an application!
	        final StandardServiceRegistry registry = new StandardServiceRegistryBuilder()
	                .configure() // configures settings from hibernate.cfg.xml
	                .build();
	        try {
	            sessionFactory = new MetadataSources(registry).buildMetadata().buildSessionFactory();
	        }
	        catch (Exception e) {
	            e.printStackTrace();
	            // The registry would be destroyed by the SessionFactory, but we had trouble building the SessionFactory
	            // so destroy it manually.
	            StandardServiceRegistryBuilder.destroy( registry );
	        }
	    }
	 
	    protected void exit() {
	        // code to close Hibernate Session factory
	    	sessionFactory.close();
	    }
	 
	    protected void create(User user) {
	        // code to save a book
	    	setup();
	    	User userMngr = new User();
	    	userMngr = user;
	    	Session session = sessionFactory.openSession();
	    	session.beginTransaction();
	    	session.save(userMngr);
	    	session.getTransaction().commit();
	    	session.close();
	    }
	    
	    protected void decline(int u_id) {
	    	setup();
	    	Session session = sessionFactory.openSession();
	    	session.beginTransaction();
	    	session.createQuery("delete from Request where user_id = :id").setParameter("id", u_id).executeUpdate();
	    	session.getTransaction().commit();
	    	session.close();
	    }
	    
	    protected void accept(int id) {
	    	setup();
	    	Session session = sessionFactory.openSession();
	    	User user = session.get(User.class, id);
	    	user.setRole(1);
	    	session.beginTransaction();
	    	session.update(user);
	    	session.getTransaction().commit();
	    	session.beginTransaction();
	    	session.createQuery("delete from Request where user_id = :id").setParameter("id", id).executeUpdate();
	    	session.getTransaction().commit();
	    	session.close();
	    }
	 
	    protected void activateAccount(User user) {
	        // code to modify a book
	    	setup();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		session.update(user);
	    		session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    }
	 
	    protected void delete() {
	        // code to remove a book
	    	Session session = sessionFactory.openSession();
	    	session.beginTransaction();
	    	
	    	session.getTransaction().commit();
	    	session.close();
	    }
	    
	    protected void addActivity(Activity act) {
	    	setup();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		session.save(act);
	    		session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    }
	    
	    protected void addUserToAct(ActivityUser au) {
	    	setup();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		session.save(au);
	    		session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    }
	    
	    protected List<Integer> getUserActs(int u_id) {
	    	setup();
	    	List<Integer> user_in_acts = new ArrayList<Integer>();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		user_in_acts = session.createQuery("select activity_id from ActivityUser where user_id = :u_id").setParameter("u_id", u_id).getResultList();
	    		for(int i = 0; i < user_in_acts.size(); i++) {
	    			System.out.println(user_in_acts.get(i));
	    		}
	    		session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	return user_in_acts;
	    }
	    
	    protected List<Activity> getActivities() {
	    	setup();
	    	List<Activity> activities = new ArrayList<Activity>();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		activities = session.createQuery("from Activity").list();
	    		for(int i = 0; i < activities.size(); i++) {
	    			System.out.println(activities.get(i).getTitle());
	    		}
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    	return activities;
	    }
	    
	    protected void unJoin(int u_id, int a_id) {
	    	setup();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		session.createQuery("delete from ActivityUser where user_id = :u_id and activity_id = :a_id").setParameter("u_id", u_id).setParameter("a_id", a_id).executeUpdate();
	    		session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    }
	    
	    protected List<Request> getRequests(){
	    	setup();
	    	List<Request> requests = new ArrayList<Request>();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		requests = session.createQuery("from Request").list();
	    		for(int i = 0; i < requests.size(); i++) {
	    			System.out.println(requests.get(i).getUser().getNom());
	    		}
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    	return requests;
	    }
	    
	    protected void sendRequest(int id) {
	    	setup();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
	    		LocalDateTime now = LocalDateTime.now();
	    		Request r = new Request(id, dtf.format(now), "PENDING");
	    		session.save(r);
	    		session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    }
	    
	    protected void addOne(int id) {
	    	setup();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		Activity act = session.get(Activity.class, id);
	    		act.setNbr_participants(act.getNbr_participants()+1);
	    		session.update(act);
	    		session.getTransaction().commit();
	    	} catch(Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    }
	    
	    protected void minusOne(int id) {
	    	setup();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		Activity act = session.get(Activity.class, id);
	    		act.setNbr_participants(act.getNbr_participants()-1);
	    		session.update(act);
	    		session.getTransaction().commit();
	    	} catch(Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    }
	    
	    protected int getNbr(int act_id) {
	    	setup();
	    	int nbr = 0;
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		nbr = (int) session.createQuery("select nbr_participants from Activity where activity_id = :act_id").setParameter("act_id", act_id).getSingleResult();
	    		System.out.println("number  :" + nbr);
	    		session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    	return nbr;
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
	    	} finally {
	    		sessionFactory.close();
	    	}
	    	return user;
	    }
	    
	    public User getUserById(int id) {
	    	setup();
	    	User user = new User();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		user = session.get(User.class, id);
		    	session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    	return user;
	    }
	    
	    public void disableAcc(int u_id) {
	    	setup();
	    	User user = new User();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		user = session.get(User.class, u_id);
	    		user.setAccount_status(2);
	    		session.update(user);
		    	session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    }
	    
	    public void enableAcc(int u_id) {
	    	setup();
	    	User user = new User();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
	    		user = session.get(User.class, u_id);
	    		user.setAccount_status(1);
	    		session.update(user);
		    	session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    }
	    
	    
	    public Activity getActivity(int id) {
	    	setup();
	    	Activity act= new Activity();
	    	User user = new User();
	    	try(Session session = sessionFactory.openSession()){
	    		session.beginTransaction();
		    	act = session.get(Activity.class, id);
		    	session.getTransaction().commit();
	    	} catch (Exception e) {
	    		e.printStackTrace();
	    	} finally {
	    		sessionFactory.close();
	    	}
	    	return act;
	    }
		public List<User> getUsersList(int role) {
			setup();
			List<User> users = new ArrayList<User>();
			try(Session session = sessionFactory.openSession()){
				session.beginTransaction();
				users = session.createQuery("FROM User where role = :role").setParameter("role", role).list();
				session.flush();
				session.getTransaction().commit();
				session.clear();
			} catch (Exception e) {
				e.printStackTrace();
			}
		    return users;
	    }
		
		public List<User> getSubsList(int role) {
			setup();
			List<User> users = new ArrayList<User>();
			try(Session session = sessionFactory.openSession()){
				session.beginTransaction();
				users = session.createQuery("FROM User where role=:role").setParameter("role", role).list();
				session.getTransaction().commit();
				session.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sessionFactory.close();
			}
		    return users;
	    }
		
		public void updateUser(User user) {
			setup();
			try(Session session = sessionFactory.openSession()){
				session.beginTransaction();
				session.update(user);
				session.getTransaction().commit();
				session.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				sessionFactory.close();
			}
		}
	    
	    public boolean validate(String email, String password) {
	    	SessionFactory sf = new Configuration().configure().buildSessionFactory();
	        try (Session session = sf.openSession()) {
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
	        } finally {
	        	sf.close();
	        }
	        return false;
	    }
}
