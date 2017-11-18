package com.etc.painter.bizimpl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.painter.biz.UserBiz;
import com.etc.painter.dao.UserDao;
import com.etc.painter.entity.User;
@Service
public class UserBizImpl implements UserBiz{
	@Resource
	private UserDao dao;
	public UserDao getDao() {
		return dao;
	}
	public void setDao(UserDao dao) {
		this.dao = dao;
	}
	public User checkLogin2(String user_name, String user_pwd) {
		// TODO Auto-generated method stub
		return dao.checkLogin2(user_name, user_pwd);
	}
	/**
	 * 添加用户的方法
	 * @author lxy
	 * @param User 添加的用户对象
	 * @return 是否添加成功
	 */
	public int  adduser(User user) {
		// TODO Auto-generated method stub
		return dao.adduser(user);
	}

	/**
	 * 根据电话号码查询的方法
	 * @author lxy
	 * @param mobile 电话号码
	 * @return 用户
	 */
	public User querybynum(String mobile) {
		// TODO Auto-generated method stub
		return dao.querybynum(mobile);
	}
	/**
	 * 根据用户名查询的方法
	 * @author lxy
	 * @param name 用户名
	 * @return 用户对象
	 */
	public User querybyname(String name) {
		// TODO Auto-generated method stub
		return dao.querybyname(name);
	}
	/**
	 * 修改用户信息的方法
	 * @author lxy
	 * @param 用户id
	 * @return 受影响行数
	 */
	public int changeuser(User user){
		// TODO Auto-generated method stub
		return dao.changeuser(user);
	}
	public boolean updateUserCollect(String user_collect,int user_id) {
		// TODO Auto-generated method stub
		return dao.updateUserCollect(user_collect, user_id);
	}
	/**
	 * 查询用户信息的方法
	 * @author lxy
	 * @param 用户id
	 * @return 用户对象
	 */
	public User querybyid(int i) {
		// TODO Auto-generated method stub
		return dao.querybyid(i);
	}
	public User querybynum1(String mobile) {
		// TODO Auto-generated method stub
		return dao.querybynum1(mobile);
	}

	

	}


