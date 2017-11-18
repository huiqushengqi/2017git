package com.etc.painter.biz;

import java.util.List;

import com.etc.painter.entity.Essay;

public interface EssayBiz {

	 /**
	  * 查询所有帖子
	  * @return 帖子集合
	  */
	public List<Essay> queryAllEssay();
	/**
	 * 根据id查询帖子
	 * @param essay_id
	 * @return 帖子对象
	 */
	public Essay queryEssayById(int essay_id);
	
	/**
	 * 发布帖子
	 * @param essay
	 * @return true-发布成功 false-发布失败
	 */
	public Boolean insertEssay(Essay essay);
	
	/**
	 * 根据用户id查询所有帖子
	 * @param user_id
	 * @return
	 */
	public List<Essay> queryEssayByUserId(int user_id);
	/**
	 * 根据关键字查询帖子
	 * @param key 关键字
	 * @return 帖子集合
	 */
	public List<Essay> queryEssayByKey(String key);
	
	/**
	 * 查询帖子数量
	 * @return int 
	 */
	public int essayNums();	
	/**
	 * 分页查询帖子数量
	 * @return 帖子集合
	 */
	public List<Essay> queryEssayByPage(int page,int size);
	/**
	 * 管理员审核通过
	 * @param essay_id 帖子id
	 * @return
	 */
	public boolean EssayPass(int essay_id);
	/**
	 * 管理员审核不通过
	 * @param essay_id 帖子id
	 * @return
	 */
	public boolean EssayNoPass(int essay_id);
	/**
	 * 管理員查詢所有未審核的帖子
	 * @return
	 */
	public List<Essay> queryEssayNoCheck();
	/**
	 * 根据时间排序帖子
	 * @return
	 */
	public List<Essay> queryEssayByTime();

}
