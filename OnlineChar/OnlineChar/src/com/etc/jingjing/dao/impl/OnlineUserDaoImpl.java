package com.etc.jingjing.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.jingjing.dao.OnlineUserDao;
import com.etc.jingjing.entity.OnlineUser;
import com.etc.jingjing.util.JDBCUtil;

public class OnlineUserDaoImpl implements OnlineUserDao{
  JDBCUtil util=new JDBCUtil();
	@Override
	public boolean addOnlineUser(OnlineUser ou) {
		// TODO Auto-generated method stub
		int i=util.update("insert into onlineuser(onlineuser_ip,onlineuser_name) values(?,?)",ou.getOnlineuser_ip(),ou.getOnlineuser_name());
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean deleteOnlineUser(int id) {
		// TODO Auto-generated method stub
		int i=util.update("delete from server where server_id=?",id);
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public boolean updateOnlinaUser(OnlineUser ou) {
		// TODO Auto-generated method stub
		int i=util.update("update onlinauser set where onlineuser_ip=?",ou.getOnlineuser_ip());
		if(i>0){
			return true;
		}
		return false;
	}

	@Override
	public List<OnlineUser> queryAllOnlineUser() {
		// TODO Auto-generated method stub
		ResultSet rs=util.query("select * from onlineuser");
		List<OnlineUser> list=new ArrayList<OnlineUser>();
		try {
			while(rs.next()){
				OnlineUser ou=new OnlineUser();
				ou.setOnlineuser_ip(rs.getString("onlineuser_ip"));
				ou.setOnlineuser_name(rs.getString("onlineuser_name"));
				list.add(ou);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return list;
	}

	@Override
	public String queryOnlineUserByIp(String ip) {
		ResultSet rs = util.query("select * from OnlineUser where onlineuser_ip=?", ip);
		try {
			if(rs.next()){
				return rs.getString("onlineuser_name");
			}
			return null;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally{
			util.closeAll();
		}
		
	}

	@Override
	public String queryOnlineUserNameByIp(String ip) {
		// TODO Auto-generated method stub
		ResultSet rs=util.query("select * from onlineuser where onlineuser_ip=?",ip);
		String str="";
		try {
			if(rs.next()){
				OnlineUser ou=new OnlineUser();
				ou.setOnlineuser_name(rs.getString("onlineuser_name"));
				ou.setOnlineuser_ip(rs.getString("onlineuser_ip"));
				str=ou.getOnlineuser_name();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return str;
	}

}
