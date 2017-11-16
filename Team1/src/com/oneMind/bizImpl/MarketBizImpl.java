package com.oneMind.bizImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oneMind.biz.MarketBiz;
import com.oneMind.dao.MarketDao;
import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;
import com.oneMind.entity.Type;
@Service
public class MarketBizImpl implements MarketBiz{
    @Resource
	private MarketDao dao;
	public boolean addComByCom(Comment com) {
		// TODO Auto-generated method stub
		return dao.addComByCom(com);
	}

	public boolean addComByPosts(Comment com) {
		// TODO Auto-generated method stub
		return dao.addComByPosts(com);
	}

	public List<Comment> queryComByPage(int postid, int thispage, int size) {
		// TODO Auto-generated method stub
		return dao.queryComByPage(postid, thispage, size);
	}

	public int queryComNum(int id) {
		// TODO Auto-generated method stub
		return dao.queryComNum(id);
	}

	public Post queryPostById(int id) {
		// TODO Auto-generated method stub
		return dao.queryPostById(id);
	}

	public List<Post> queryPostByPage(int thispage, int size) {
		// TODO Auto-generated method stub
		return dao.queryPostByPage(thispage, size);
	}

	public int queryPostNum() {
		// TODO Auto-generated method stub
		return dao.queryPostNum();
	}

	public List<Post> queryPostsByName(String name) {
		// TODO Auto-generated method stub
		return dao.queryPostsByName(name);
	}

	public List<Post> queryPostsByType(Type t) {
		// TODO Auto-generated method stub
		return dao.queryPostsByType(t);
	}

	public Student queryStudentById(int id) {
		// TODO Auto-generated method stub
		return dao.queryStudentById(id);
	}

	public List<Post> queryconfession() {
		// TODO Auto-generated method stub
		return dao.queryconfession();
	}
	public boolean addpost1(Post post) {
		// TODO Auto-generated method stub
		return dao.addpost1(post);
	}

}
