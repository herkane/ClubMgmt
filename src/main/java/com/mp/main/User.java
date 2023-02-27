package com.mp.main;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.*;

@Entity
@Table(name = "users")

public class User {
    private String nom;
    private String prenom;
    private String email;
    private String password;
    private int id;
    private int role;
    private int account_status;
    private List<Activity> activities;
    private String gmailCode;

	@OneToOne(mappedBy = "user")
	public Request getRequest() {
		return request;
	}
	
	
	@ManyToMany(mappedBy = "users")
	public List<Activity> getActivities() {
		return activities;
	}
	
	



	


	public String getGmailCode() {
		return gmailCode;
	}


	public void setGmailCode(String gmailCode) {
		this.gmailCode = gmailCode;
	}


	public void setActivities(List<Activity> activities) {
		this.activities = activities;
	}



	public void setRequest(Request request) {
		this.request = request;
	}

	private Request request;

    
	public User() {
	}
	
	public User(String nom, String prenom, String email, String password, int role) {
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.password = password;
		this.role = role;
	}


	@Column(name = "l_name")
	public String getNom() {
        return nom;
    }
    public void setNom(String nom) {
        this.nom = nom;
    }
    
    @Column(name = "f_name")
    public String getPrenom() {
        return prenom;
    }
    
    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }
    
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public int getRole() {
		return role;
	}
	public void setRole(int role) {
		this.role = role;
	}
	
	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public int getAccount_status() {
		return account_status;
	}

	public void setAccount_status(int account_status) {
		this.account_status = account_status;
	}
	
	@Override
	public boolean equals(Object obj) {

	if (obj == this) {
	    return true;
	}

	if (!(obj instanceof User)) {
	    return false;
	}

	User other = (User) obj;

	return getId() == other.getId();
	}
	
	
    
}
