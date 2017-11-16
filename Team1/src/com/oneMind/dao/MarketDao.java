package com.oneMind.dao;

import java.util.List;

import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;

import com.oneMind.entity.Type;

public interface MarketDao {
    //查询帖子数
	public int queryPostNum ();
	//分页查詢帖子
	public List<Post> queryPostByPage (int thispage,int size);
	//根據类型查询帖子
	public List<Post> queryPostsByType (Type t);
	//根据名称模糊查询帖子
	public List<Post> queryPostsByName (String name);
	//根据帖子ID分页查询评价
	public List<Comment> queryComByPage (int postid,int thispage,int size);
	//回复帖子
	public boolean addComByPosts (Comment com);
	//回复评价
	public boolean addComByCom (Comment com);
	//查询学生
	public Student queryStudentById(int id);
	//根据帖子ID查询帖子
	public Post queryPostById(int id);
	//查询评论数
	public int queryComNum (int id);
	//查询表白墙的帖子
	public List<Post> queryconfession ();
	//添加帖子
	public boolean addpost1(Post post);
	
}
