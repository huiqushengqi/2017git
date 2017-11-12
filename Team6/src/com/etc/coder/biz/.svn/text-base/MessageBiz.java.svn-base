package com.etc.coder.biz;

import java.util.List;

import com.etc.coder.entity.Message;

public interface MessageBiz {
	
	/**
	 * 添加留言的方法
	 * @param title	标题
	 * @param text	内容
	 * @param date	发布时间
	 * @return	是否添加成功
	 */
	public boolean addMessage(String title,String text,String date,int userid);
	
	/**
	 * 分页查询留言
	 * @param curpage 当前页码
	 * @param size	每页显示条数
	 * @return	
	 */
	public List<Message> queryAllMessageByPage(int curpage,int size);
	
	/**
	 * 查询留言数量
	 * @return 返回数量
	 */
	public int queryCountMessage();
	
	/**
	 * 根据ID查询message
	 * @param id
	 * @return
	 */
	public Message queryMessageById(int id);

}
