package com.mp.main;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_activities")
public class ActivityUser {
	private int activity_id, user_id, id;

	public ActivityUser(int act_id, int u_id) {
		this.activity_id = act_id;
		this.user_id = u_id;
	}
	
	@Id
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getActivity_id() {
		return activity_id;
	}

	public void setActivity_id(int act_id) {
		this.activity_id = act_id;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int u_id) {
		this.user_id = u_id;
	}
	
	
}
