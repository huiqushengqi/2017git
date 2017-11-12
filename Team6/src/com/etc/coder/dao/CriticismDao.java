package com.etc.coder.dao;

import java.util.List;

import com.etc.coder.entity.Criticism;

public interface CriticismDao {
	
	/**
	 * 添加评论的方法
	 * @param cri_message
	 * @param criticism_text
	 * @param criticism_date
	 * @return
	 */
	public boolean addCriticism(int cri_message,String criticism_text,String criticism_date,int criticism_userid);

	/**
	 * 根据messageid查询评论
	 * @param messageid
	 * @return
	 */
	public List<Criticism> queryCriticismByMessageId(int messageid);
}
