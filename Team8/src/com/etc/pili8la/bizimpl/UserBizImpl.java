package com.etc.pili8la.bizimpl;

import java.util.List;

import com.etc.pili8la.biz.UserBiz;
import com.etc.pili8la.dao.UserDao;
import com.etc.pili8la.daoimpl.UserDaoImpl;
import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.entity.Music;
import com.etc.pili8la.entity.User;

public class UserBizImpl implements UserBiz{
     UserDao ud=new UserDaoImpl();
    /**
     * 判断添加用户是否正确
     */
	public boolean addUser(User user) {
		if(user==null){
			return false;
		}
		return ud.addUser(user);
	}
	/**
	 * 通过ajax查询名字
	 */
	public boolean queryNamebyAjax(String name) {
		if (name==""||name==null) {
			return false;
		}
		return ud.queryNamebyAjax(name);
	}
	/**
	 * 判断登录是否非法
	 */
	public User checkLogin(String name, String pwd) {
		if (name==""||name==null||pwd==""||pwd==null) {
			return null;
		}
		return ud.checkLogin(name, pwd);
	}
	/**
	 * 查询所有音乐
	 */
	public List<Music> queryAllmusic() {
		
		return ud.queryAllmusic();
	}
	/**
	 * 通过id删除用户
	 */
	public boolean deleteUserById(int id) {
		if (id<0){
			return false;
		}
		return ud.deleteUserById(id);
	}
	/**
	 * 通过id查询用户
	 */
	public User queryUserById(int id) {
		if (id<0){
			return null;
		}
		return ud.queryUserById(id);
	}

	/**
	 * 通过用户更新用户信息
	 */

	public boolean updateUser(User user) {
		if (user.getUser_id()<0||user.getUser_name()==null||user.getUser_pwd()==null||user.getUser_name()==""||user.getUser_pwd()=="") {
			return false;
		}
		return ud.updateUser(user);
	}
	/**
	 * 通过用户查询用户评论
	 */
	public List<Comment> queryCommentByUser(int id) {
		if(id<0){
			return null;
		}

		return ud.queryCommentByUser(id);
	}
	/**
	 * 得到评论数
	 */
	public int getCommentByidCount(int id) {
		if(id<0){
			return 0;
		}
		
		return ud.getCommentByidCount(id);
	}
	/**
	 * 查询评论分页数
	 */
	public List<Comment> queryCommentBypage(int thispage, int size, int id) {
		if(thispage<0||size<0||id<0){
			return null;
		}
		
		return ud.queryCommentBypage(thispage, size, id);
	}

}
