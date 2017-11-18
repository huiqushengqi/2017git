package com.etc.painter.biz;

import java.util.List;

import com.etc.painter.entity.Review;

public interface ReviewBiz {

	/**
	 * 根据帖子id查询所有评论
	 * @param essay_id
	 * @return 评论集合
	 */
	public List<Review> queryReviewByEssayid(int essay_id);
	/**
	 * 查询所有评论
	 * @return 评论集合
	 */
	public List<Review> queryAllReview();
	/**
	 * 添加文章评论
	 * @param review
	 * @return-添加成功 false-添加失败
	 */
	public int addReview(Review review);
	/**
	 * 根据文章id查询评论总条数
	 * @param review_essay 评论文章id
	 * @return 总条数
	 */
	public int ReviewNum(int review_essay);
	/**
	 * 分页查询文章评论
	 * @param page 页数
	 * @param size 每页显示
	 * @param review_essay 评论文章id
	 * @return
	 */
	public List<Review> queryReviewByPage(int page,int size,int review_essay);
}
