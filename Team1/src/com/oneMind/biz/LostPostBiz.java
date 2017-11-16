package com.oneMind.biz;

import java.util.List;

import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;

public interface LostPostBiz {
	//添加失物招领帖子
	  public boolean addLost(Post post);
	  //分页查询失物招领帖子
	  public List<Post> queryLostByPage(int page,int size);
	  //根据id查询post
	  public Post queryLostById(int id);
	//获取失物招领总条数
	  public int getcount();
	//添加评论
	  public boolean addComment(Comment comment);
	  //根据帖子id查询评论
	  public List<Comment> queryComByPost(int id);
}
