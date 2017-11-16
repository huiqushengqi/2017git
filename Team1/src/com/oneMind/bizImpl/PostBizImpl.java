package com.oneMind.bizImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oneMind.biz.PostBiz;
import com.oneMind.dao.PostDao;
import com.oneMind.entity.Post;
@Service
public class PostBizImpl implements PostBiz{
	@Resource
	private PostDao dao;

	public PostDao getDao() {
		return dao;
	}

	public void setDao(PostDao dao) {
		this.dao = dao;
	}

	@Override
	public List<Post> querryWall(String typename,int page, int size) {
		
		return dao.querryWall(typename, page, size);
	}


	@Override
	public List<Post> queryallbyhot() {
		// TODO Auto-generated method stub
		return dao.queryallbyhot();
	}

	@Override
	public List<Post> querryWall(String typename) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Post> queryPostByPage() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int countWall(String typename) {
		
		return dao.countWall(typename);
	}

	
	

}
