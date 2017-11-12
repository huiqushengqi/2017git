package com.etc.pili8la.dao;

import java.util.List;

import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.entity.Music;
import com.etc.pili8la.entity.User;

public interface UserDao {
    
	//用户注册的方法
	public boolean addUser(User user);
	
	//ajax无刷新验证用户名
	public boolean queryNamebyAjax(String name);
	
	//用户登录的方法
	public User checkLogin(String name,String pwd);
	
	//查询音乐的方法
	public List<Music> queryAllmusic();
	
	//修改用户信息的方法
	public boolean updateUser(User user);
	
	//通过id查询用户信息的方法
	public User queryUserById(int id);
	
	//通过id删除用户的方法
	public boolean deleteUserById(int id);
	
	//通过id查询用户评论的方法
	public List<Comment> queryCommentByUser(int id);
	
	//通过id查询用户评论总数的方法
	public int getCommentByidCount(int id);
	
	//分页实现查询评论的方法（分页没实现）
	public List<Comment> queryCommentBypage(int thispage,int size,int id);
	
	
	
	
	

}
