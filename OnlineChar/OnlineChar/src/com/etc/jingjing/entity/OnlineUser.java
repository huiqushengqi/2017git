package com.etc.jingjing.entity;

import java.io.Serializable;

/* 在线用户表t_online_users
* create table t_online_users(
* online_user_id int(20) primary key,
* online_user_ip varchar(20) not null,
* online_user_name varchar(20) not null
* );
*/
public class OnlineUser implements Serializable{
	private int onlineuser_id;
	private String onlineuser_ip;
	private String onlineuser_name;
	
	
	public int getOnlineuser_id() {
		return onlineuser_id;
	}
	public void setOnlineuser_id(int onlineuser_id) {
		this.onlineuser_id = onlineuser_id;
	}
	public String getOnlineuser_ip() {
		return onlineuser_ip;
	}
	public void setOnlineuser_ip(String onlineuser_ip) {
		this.onlineuser_ip = onlineuser_ip;
	}
	public String getOnlineuser_name() {
		return onlineuser_name;
	}
	public void setOnlineuser_name(String onlineuser_name) {
		this.onlineuser_name = onlineuser_name;
	}
	@Override
	public String toString() {
		return onlineuser_id+"/"+  onlineuser_ip +"/"+  onlineuser_name;
	}
	
	
	
}
