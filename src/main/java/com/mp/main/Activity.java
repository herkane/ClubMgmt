package com.mp.main;

import java.util.List;

import javax.persistence.CascadeType;
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
	
	@ManyToMany(cascade = { CascadeType.ALL })
	@JoinTable(
			name = "activities_has_user", 
			joinColumns = {@JoinColumn(name = "activity_id")},
			inverseJoinColumns = {@JoinColumn(name = "user_id")}
	)	List<User> activities;
	
	public Activity() {}
	
	public Activity(String title, String description) {
		this.title = title;
		this.description = description;
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
