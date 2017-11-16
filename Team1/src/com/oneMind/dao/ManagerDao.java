package com.oneMind.dao;

import com.oneMind.entity.Manager;

public  interface ManagerDao {
	
	public Manager checkLogin(String name,String pwd);

}
