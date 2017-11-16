package com.oneMind.bizImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oneMind.biz.ConfessionPostBiz;
import com.oneMind.dao.ConfessionPostDao;
import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;
@Service
public class ConfessionPostBizImpl implements ConfessionPostBiz{
     @Resource
	private ConfessionPostDao dao;
	
	
	
	public ConfessionPostDao getDao() {
		return dao;
	}

	public void setDao(ConfessionPostDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean addConfession(Post post) {
		// TODO Auto-generated method stub
		return dao.addConfession(post);
	}

	@Override
	public List<Post> queryConfessionByPage(int page, int size) {
		// TODO Auto-generated method stub
		return dao.queryConfessionByPage(page, size);
	}

	@Override
	public Student queryById(int id) {
		// TODO Auto-generated method stub
		return dao.queryById(id);
	}

	@Override
	public int getcount() {
		// TODO Auto-generated method stub
		return dao.getcount();
	}

	@Override
	public Post queryConfessionById(int id) {
		// TODO Auto-generated method stub
		return dao.queryConfessionById(id);
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
