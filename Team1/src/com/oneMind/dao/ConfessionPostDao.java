package com.oneMind.dao;

import java.util.List;

import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;

public interface ConfessionPostDao {
 
	//添加表白墙帖子
	  public boolean addConfession(Post post);
	  //分页查询表白墙帖子
	  public List<Post> queryConfessionByPage(int page,int size);
	  //根据id查询学生
	  public Student queryById(int id);
	  //获取表白墙总条数
	  public int getcount();
	  //根据id查询post
	  public Post queryConfessionById(int id);
	  //添加评论
	  public boolean addComment(Comment comment);
	  //根据帖子id查询评论
	  public List<Comment> queryComByPost(int id);
}
