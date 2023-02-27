package com.mp.main;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinColumns;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="activities")

public class Activity {
	private String title, description;
	private int id, nbr_participants;
	private List<User> users;

	public Activity() {}
	
	public Activity(String title, String description) {
		this.title = title;
		this.description = description;
	}
	
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(
			name = "user_activities",
			joinColumns = @JoinColumn(name="activity_id"),
			inverseJoinColumns = @JoinColumn(name="user_id")
	)
	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	@Id
	@Column(name="activity_id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNbr_participants() {
		return nbr_participants;
	}
	public void setNbr_participants(int nbr_participants) {
		this.nbr_participants = nbr_participants;
	}
}
