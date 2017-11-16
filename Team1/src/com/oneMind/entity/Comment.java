package com.oneMind.entity;
//ÆÀÂÛ
public class Comment {
	private int comment_id;
	private Student comment_student;
	private Post comment_post;
	private String comment_content;
	private String comment_date;
	private int comment_reply;
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public Student getComment_student() {
		return comment_student;
	}
	public void setComment_student(Student comment_student) {
		this.comment_student = comment_student;
	}
	public Post getComment_post() {
		return comment_post;
	}
	public void setComment_post(Post comment_post) {
		this.comment_post = comment_post;
	}
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_date() {
		return comment_date;
	}
	public void setComment_date(String comment_date) {
		this.comment_date = comment_date;
	}
	public int getComment_reply() {
		return comment_reply;
	}
	public void setComment_reply(int comment_reply) {
		this.comment_reply = comment_reply;
	}

}
