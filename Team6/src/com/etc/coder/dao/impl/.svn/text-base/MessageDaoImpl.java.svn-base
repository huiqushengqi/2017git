package com.etc.coder.dao.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

import oracle.jdbc.internal.OracleTypes;

import com.etc.coder.biz.UserBiz;
import com.etc.coder.biz.impl.UserBizImpl;
import com.etc.coder.dao.MessageDao;
import com.etc.coder.entity.Message;
import com.etc.coder.entity.User;
import com.etc.coder.util.JNDIUtil;

public class MessageDaoImpl implements MessageDao {

	JNDIUtil util=new JNDIUtil();
	
	/**
	 * 添加留言的方法
	 */
	public boolean addMessage(String title, String text, String date,int userid) {
		return util.call_notreturn_proc("proc_addMessage(?,?,?,?)", title,text,date,userid);
	}
	/**
	 * 分页查询留言
	 */
	public List<Message> queryAllMessageByPage(int curpage, int size) {
		List<Integer> list=new ArrayList<Integer>();
		list.add(OracleTypes.CURSOR);
		Object[] obj=util.call_HasReturn_proc("proc_queryAllMessageByPage(?,?,?)", list, curpage,size);
		ResultSet rs=(ResultSet) obj[0];
		List<Message> messagelist=new ArrayList<Message>();
		try {
			while(rs.next()){
				Message message =new Message();
				message.setMessage_id(rs.getInt("MESSAGE_ID"));
				message.setMessage_title(rs.getString("MESSAGE_TITLE"));
				message.setMessage_text(rs.getString("MESSAGE_TEXT"));
				message.setMessage_date(rs.getString("MESSAGE_DATE"));
				int userid=rs.getInt("MESSAGE_USERID");
				UserBiz biz=new UserBizImpl(); 
				User user=biz.queryUserById(userid);
				message.setMessage_user(user);
				messagelist.add(message);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return messagelist;
	}
	public int queryCountMessage() {
		List<Integer> list=new ArrayList<Integer>();
		list.add(Types.INTEGER);
		Object[] obj=util.call_HasReturn_proc("proc_queryCountMessage(?)", list);
			if(obj[0]!=null){
				return (Integer) obj[0];
			}
		return 0;
	}
	public Message queryMessageById(int id) {
		 List<Integer> list =new ArrayList<Integer>();
		 list.add(OracleTypes.CURSOR);         
		 Object[] obj=util.call_HasReturn_proc("proc_queryMessageById(?,?)", list, id);
		 ResultSet rs=(ResultSet) obj[0];
		 Message message=null;
		 try {
			if(rs.next()){
				 message=new Message();
				 message.setMessage_id(rs.getInt("MESSAGE_ID"));
				 message.setMessage_title(rs.getString("MESSAGE_TITLE"));
				 message.setMessage_text(rs.getString("MESSAGE_TEXT"));
				 message.setMessage_date(rs.getString("MESSAGE_DATE"));
				 int userid=rs.getInt("MESSAGE_USERID");
				 UserBiz biz=new UserBizImpl();
				 User user=biz.queryUserById(userid);
				 message.setMessage_user(user);
			 }
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return message;
	}

}
