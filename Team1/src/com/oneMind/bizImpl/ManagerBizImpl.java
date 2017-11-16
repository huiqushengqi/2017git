package com.oneMind.bizImpl;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.oneMind.biz.ManagerBiz;
import com.oneMind.dao.ManagerDao;

import com.oneMind.entity.Manager;
@Service
public class ManagerBizImpl implements ManagerBiz{
	@Resource
	 private ManagerDao dao;
	
	

	public ManagerDao getDao() {
		return dao;
	}



	public void setDao(ManagerDao dao) {
		this.dao = dao;
	}



	@Override
	public Manager checkLogin(String name, String pwd) {
		// TODO Auto-generated method stub
		return dao.checkLogin(name, pwd);
	}

}
