package com.etc.painter.entity;

public class Review {
 
	private Integer review_id;
	private String review_content;
	private Essay review_essay;
	private String review_reply;
	private String review_time;
	private User review_user;
	public User getReview_user() {
		return review_user;
	}
	public void setReview_user(User reviewUser) {
		review_user = reviewUser;
	}
	public Integer getReview_id() {
		return review_id;
	}
	public void setReview_id(Integer reviewId) {
		review_id = reviewId;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String reviewContent) {
		review_content = reviewContent;
	}
	
	public Essay getReview_essay() {
		return review_essay;
	}
	public void setReview_essay(Essay reviewEssay) {
		review_essay = reviewEssay;
	}
	public String getReview_reply() {
		return review_reply;
	}
	public void setReview_reply(String reviewReply) {
		review_reply = reviewReply;
	}
	public String getReview_time() {
		return review_time;
	}
	public void setReview_time(String reviewTime) {
		review_time = reviewTime;
	}
	
	public Review(Integer reviewId, String reviewContent, Essay reviewEssay,
			String reviewReply, String reviewTime, User reviewUser) {
		super();
		review_id = reviewId;
		review_content = reviewContent;
		review_essay = reviewEssay;
		review_reply = reviewReply;
		review_time = reviewTime;
		review_user = reviewUser;
	}
	public Review() {
		super();
	}
	@Override
	public String toString() {
		return "Review [review_content=" + review_content + ", review_essay="
				+ review_essay + ", review_id=" + review_id + ", review_reply="
				+ review_reply + ", review_time=" + review_time
				+ ", review_user=" + review_user + "]";
	}
	
	
}
