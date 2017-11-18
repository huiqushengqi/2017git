package com.etc.painter.dao;

import java.util.List;

import com.etc.painter.entity.Review;

public interface ReviewDao {
    //根据帖子id查询所有评论
	public List<Review> queryReviewByEssayid(int essay_id);
	//查询所有评论
	public List<Review> queryAllReview();
	//添加文章评论
	public int addReview(Review review);
	//根据文章id查询评论总条数
	public int ReviewNum(int review_essay);
	//分页查询文章评论
	public List<Review> queryReviewByPage(int page,int size,int review_essay);
}
