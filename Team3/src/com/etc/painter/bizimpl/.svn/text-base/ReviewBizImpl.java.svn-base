package com.etc.painter.bizimpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.etc.painter.biz.ReviewBiz;
import com.etc.painter.dao.ReviewDao;
import com.etc.painter.entity.Review;
@Service
public class ReviewBizImpl implements ReviewBiz{
	@Resource
	private ReviewDao dao;
	public List<Review> queryAllReview() {
		// TODO Auto-generated method stub
		return dao.queryAllReview();
	}

	public List<Review> queryReviewByEssayid(int essay_id) {
		// TODO Auto-generated method stub
		return dao.queryReviewByEssayid(essay_id);
	}

	public int addReview(Review review) {
		// TODO Auto-generated method stub
		return dao.addReview(review);
	}

	public int ReviewNum(int review_essay) {
		// TODO Auto-generated method stub
		return dao.ReviewNum(review_essay);
	}

	public List<Review> queryReviewByPage(int page, int size, int review_essay) {
		// TODO Auto-generated method stub
		return dao.queryReviewByPage(page, size, review_essay);
	}




	

}
