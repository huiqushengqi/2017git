package com.oneMind.bizImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oneMind.biz.LostPostBiz;
import com.oneMind.dao.LostPostDao;
import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
@Service
public class LostPostBizImpl implements LostPostBiz{
     @Resource
	private LostPostDao dao;
	
	public LostPostDao getDao() {
		return dao;
	}

	public void setDao(LostPostDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean addLost(Post post) {
		// TODO Auto-generated method stub
		 return dao.addLost(post);
	}


	@Override
	public List<Post> queryLostByPage(int page, int size) {
		// TODO Auto-generated method stub
		return dao.queryLostByPage(page, size);
	}

	

	@Override
	public Post queryLostById(int id) {
		// TODO Auto-generated method stub
		return dao.queryLostById(id);
	}

	@Override
	public int getcount() {
		// TODO Auto-generated method stub
		return dao.getcount();
	}

	@Override
	public boolean addComment(Comment comment) {
		// TODO Auto-generated method stub
		return dao.addComment(comment);
	}

	@Override
	public List<Comment> queryComByPost(int id) {
		// TODO Auto-generated method stub
		return dao.queryComByPost(id);
	}

}
