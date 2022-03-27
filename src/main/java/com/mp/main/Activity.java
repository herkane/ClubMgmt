package com.mp.main;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name="activities")

public class Activity {
	private String title, description, image;
	private int id, nbr_participants;
	
	@ManyToMany
	@JoinTable(name = "activities_has_user", joinColumns = @JoinColumn(name = "user_id"), inverseJoinColumns = @JoinColumn(name = "activity_id"))
	List<User> users_in_activity;
	
	public Activity() {}
	
	public Activity(String title, String description, String image, int nbr_participants) {
		this.title = title;
		this.description = description;
		this.image = image;
		this.nbr_participants = nbr_participants;
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	@Id
	@Column(name="id")
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
