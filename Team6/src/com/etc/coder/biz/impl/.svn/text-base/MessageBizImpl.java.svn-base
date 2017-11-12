package com.etc.coder.biz.impl;

import java.util.List;

import com.etc.coder.biz.MessageBiz;
import com.etc.coder.dao.MessageDao;
import com.etc.coder.dao.impl.MessageDaoImpl;
import com.etc.coder.entity.Message;

public class MessageBizImpl implements MessageBiz {

	MessageDao dao=new MessageDaoImpl();
	
	public boolean addMessage(String title, String text, String date,int userid) {
		if(title==null||title.equals("")){
			return false;
		}else if(text==null||text.equals("")){
			return false;
		}else{
			return dao.addMessage(title, text, date,userid);
		}
	}

	public List<Message> queryAllMessageByPage(int curpage, int size) {
		if(curpage<=0||size<=0){
			return null;
		}else {
			return dao.queryAllMessageByPage(curpage, size);
		}
	}

	public int queryCountMessage() {
		
		return dao.queryCountMessage();
	}

	public Message queryMessageById(int id) {
		if(id<0){
			return null;
		}else{
			return dao.queryMessageById(id);
		}
	}

}
