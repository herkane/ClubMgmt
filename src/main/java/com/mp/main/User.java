package com.mp.main;

import javax.persistence.*;



@Entity
@Table(name = "users")
public class User {
	private int id; 
	private int role; 
    private String email;
    private String password;
    private int account_status;
    private String prenom;
    private String nom;
    
    
	public User() {
		super();
	}

	public User(int id, int role, String email, String password, int account_status, String prenom, String nom) {
		super();
		this.id = id;
		this.role = role;
		this.email = email;
		this.password = password;
		this.account_status = account_status;
		this.prenom = prenom;
		this.nom = nom;
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

	public int getRole() {
		return role;
	}

	public void setRole(int role) {
		this.role = role;
	}

	public int getAccount_status() {
		return account_status;
	}

	public void setAccount_status(int account_status) {
		this.account_status = account_status;
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
    
}
