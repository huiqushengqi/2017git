package com.etc.painter.dao;

import java.util.List;

import com.etc.painter.entity.Essay;

public interface EssayDao {
	// 查询所有帖子
	public List<Essay> queryAllEssay();
	//根据帖子id查询帖子
	public Essay queryEssayById(int essay_id);
	//发布帖子
	public Boolean insertEssay(Essay essay);
	//根据用户id查询所有帖子
	public List<Essay> queryEssayByUserId(int user_id);
	//根据关键字查询帖子
	public List<Essay> queryEssayByKey(String key);
	//查询帖子数量
	public int essayNums();
	//分页查询帖子数量
	public List<Essay> queryEssayByPage(int page,int size);
	//管理员审核通过
	public boolean EssayPass(int essay_id);
	//管理员审核不通过
	public boolean EssayNoPass(int essay_id);
	//管理員查詢所有未審核的帖子
	public List<Essay> queryEssayNoCheck();
	//根据时间排序帖子
	public List<Essay> queryEssayByTime();
}
