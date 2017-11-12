package com.etc.pili8la.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import com.etc.pili8la.dao.UserDao;
import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.entity.Music;
import com.etc.pili8la.entity.User;
import com.etc.pili8la.util.JDBCUtil;

import oracle.jdbc.OracleTypes;

public class UserDaoImpl implements UserDao{
   JDBCUtil jdbc=new JDBCUtil();
	public boolean addUser(User user) {
		if (jdbc.cas_notreturn_porc("proc_adduser(?,?,?)",user.getUser_name(),user.getUser_pwd(),user.getUser_head())) { 
		return true;
		}
		return false;
	}

	public boolean queryNamebyAjax(String name) {
		List<Integer> list = new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj = jdbc.cas_hasreturn_porc("proc_querynamebyajax(?,?)", list, name);
		ResultSet rs = (ResultSet) obj[0];
		try {
			if(rs.next()){
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			jdbc.closeAll();
		}
		return false;
	}

	public User checkLogin(String name, String pwd) {
		List<Integer> list = new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj = jdbc.cas_hasreturn_porc("proc_checklogin(?,?,?)", list, name, pwd);
		ResultSet rs = (ResultSet) obj[0];
		User user=null;
		try {
			if(rs.next()){
				 user=new User();
				 user.setUser_id(rs.getInt("user_id"));
				 user.setUser_name(rs.getString("user_name"));
				 user.setUser_pwd(rs.getString("user_pwd"));
			     user.setUser_head(rs.getString("user_head"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			jdbc.closeAll();
		}
		return user;
	}

	public List<Music> queryAllmusic() {
		List<Integer> list = new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj = jdbc.cas_hasreturn_porc("proc_queryallmusic(?)", list);
		ResultSet rs = (ResultSet) obj[0];
		List<Music> list1=new ArrayList<Music>();
		try {
			while (rs.next()) {
				Music m=new Music();
				m.setMusic_id(rs.getInt("music_id"));
				m.setMusic_cover(rs.getString("music_cover"));
				m.setMusic_link(rs.getString("music_link"));
				m.setMusic_singer(rs.getString("music_singer"));
				m.setMusic_title(rs.getString("music_title"));
				m.setMusic_type(rs.getString("music_type"));
				list1.add(m);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			jdbc.closeAll();
		}
		return list1;
	}

	public boolean deleteUserById(int id) {
		  int i= jdbc.update("delete from p_user where user_id=?", id);
		  if (i>0){
			  return true;
		  }
		return false;
	}

	public User queryUserById(int id) {
		ResultSet rs=jdbc.query("select * from p_user where user_id=?",id);
		User user=null;
		try {
			if (rs.next()) {
				user=new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setUser_name(rs.getString("user_name"));
				user.setUser_pwd(rs.getString("user_pwd"));
				user.setUser_head(rs.getString("user_head"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			jdbc.closeAll();
		}
		return user;
	}


	public boolean updateUser(User user) {
		int i=jdbc.update("update p_user set user_name=?,user_pwd=?,user_head=? where user_id=?",user.getUser_name(),user.getUser_pwd(),user.getUser_head(),user.getUser_id());
		if (i>0){
			return true;
		}
		return false;
	}

	
	public List<Comment> queryCommentByUser(int id) {
		ResultSet rs=jdbc.query("select comment_content,comment_date from p_comment,p_user where user_id=? and user_id=comment_userid", id);
		List<Comment> list=new ArrayList<Comment>();
		try {
			while (rs.next()) {
				Comment co=new Comment();
				co.setComment_content(rs.getString("comment_content"));
				co.setComment_date(rs.getString("comment_date"));
				list.add(co);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			jdbc.closeAll();
		}
		return list;
	}

	public int getCommentByidCount(int id) {
		int i=-1;
		ResultSet rs=jdbc.query("select count(*) as a from p_user,p_comment where user_id=? and user_id=comment_userid",id);
		try {
			if(rs.next()){
			i=rs.getInt("A");	
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			jdbc.closeAll();
		}
			return i;
		}

	public List<Comment> queryCommentBypage(int thispage, int size, int id) {
		
		List<Comment> list=new ArrayList<Comment>();
		ResultSet rs= jdbc.query("select * from (select t.*,rownum as tnum from (select comment_content,comment_date from p_comment,p_user where user_id=? and user_id=comment_userid order by comment_date DESC) t where rownum<=?) s where s.tnum>? ", id,thispage*size,(thispage-1)*size);
		try {
			while (rs.next()) {
				Comment c=new Comment();
				c.setComment_content(rs.getString("comment_content"));
				c.setComment_date(rs.getString("comment_date"));
				list.add(c);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			jdbc.closeAll();
			
		}
		
		return list;
	}

	

}
