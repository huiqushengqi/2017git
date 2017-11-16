package com.oneMind.bizImpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oneMind.biz.CollectionBiz;
import com.oneMind.dao.CollectionDao;

@Service
public class CollectionBizImpl implements CollectionBiz {
	@Resource
	private CollectionDao dao;
	

	public CollectionDao getDao() {
		return dao;
	}


	public void setDao(CollectionDao dao) {
		this.dao = dao;
	}


	@Override
	public boolean addCollection(int stuid, int postid) {
		// TODO Auto-generated method stub
		return dao.addCollection(stuid, postid);
	}

}
