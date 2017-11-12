package com.etc.pili8la.biz;

import java.util.List;

import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.entity.Music;
import com.etc.pili8la.entity.User;

public interface UserBiz {

	public boolean addUser(User user);
	
	public boolean queryNamebyAjax(String name);

	public User checkLogin(String name,String pwd);
	
	public List<Music> queryAllmusic();
	
	public boolean deleteUserById(int id);
	
	public boolean updateUser(User user);
	
	public User queryUserById(int id);
	
    public List<Comment> queryCommentByUser(int id);
	
	public int getCommentByidCount(int id);
	
	public List<Comment> queryCommentBypage(int thispage,int size,int id);
	

}
