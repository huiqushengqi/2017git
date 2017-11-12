package com.etc.jingjing.biz.impl;

import java.util.List;

import com.etc.jingjing.biz.OnlineUserBiz;
import com.etc.jingjing.dao.OnlineUserDao;
import com.etc.jingjing.dao.impl.OnlineUserDaoImpl;
import com.etc.jingjing.entity.OnlineUser;

public class OnlineUserBizImpl implements OnlineUserBiz {
    OnlineUserDao dao=new OnlineUserDaoImpl();
	@Override
	public boolean addOnlineUser(OnlineUser ou) {
		// TODO Auto-generated method stub
		if(ou.getOnlineuser_ip()==""&&ou.getOnlineuser_ip()==null){
			return false;
		}else if(ou.getOnlineuser_name()==""&&ou.getOnlineuser_name()==null){
			return false;
		}
		return dao.addOnlineUser(ou);
	}
		
		
	

	@Override
	public boolean deleteOnlineUser(int id) {
		// TODO Auto-generated method stub
		if(id<0){
			return false;
		}
		return dao.deleteOnlineUser(id);
	}

	@Override
	public boolean updateOnlinaUser(OnlineUser ou) {
		// TODO Auto-generated method stub
		if(ou.getOnlineuser_ip()==""&&ou.getOnlineuser_ip()==null){
			return false;
		}else {
		return dao.updateOnlinaUser(ou);
		}
	}

	@Override
	public List<OnlineUser> queryAllOnlineUser() {
		return dao.queryAllOnlineUser();
	}

	@Override
	public String queryOnlineUserByIp(String ip) {
		// TODO Auto-generated method stub
		if(ip==null&&ip==""){
			return null;
		}
		return dao.queryOnlineUserByIp(ip);
	}




	@Override
	public String queryOnlineUserNameByIp(String ip) {
		// TODO Auto-generated method stub
		if(ip==null&&ip==""){
			return null;
		}
		return dao.queryOnlineUserNameByIp(ip);
	}

}
