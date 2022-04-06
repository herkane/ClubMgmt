package com.mp.main;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "requests")
public class Request {
	String date, status;
	int user_id, req_id;

	public Request(int user_id, String date, String status) {
		this.user_id = user_id;
		this.date = date;
		this.status = status;
	}

	public Request() {
	}
	
	protected User user;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	public int getReq_id() {
		return req_id;
	}

	public void setReq_id(int id) {
		this.req_id = id;
	}
	
	

	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name = "user_id", referencedColumnName = "id", nullable = false, insertable = false, updatable = false)
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getUser_id() {
		return user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	
	
	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
	
	

}
