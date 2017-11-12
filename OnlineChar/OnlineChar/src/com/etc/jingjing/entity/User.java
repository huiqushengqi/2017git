package com.etc.jingjing.entity;

import java.io.Serializable;
/*
 * 用户表t_users
 * create table t_users(
 * user_id int(100) primary key,
 * user_name varchar(20) not null,
 * user_password varchar(20) not null
 * );
 * 
 * 在线用户表t_online_users
 * create table t_onlineusers(
 * onlineuser_ip varchar(20) primary key,
 * onlineuser_name varchar(20) not null
 * );
 */
public class User implements Serializable {
	private int user_id;
	private String user_name;
	private String user_password;
	
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_name=" + user_name
				+ ", user_password=" + user_password + "]";
	}
	
	

}
