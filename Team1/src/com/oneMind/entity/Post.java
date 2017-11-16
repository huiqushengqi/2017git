package com.oneMind.entity;
//Ьћзг
public class Post {
	private int post_id;
	private String post_title;
	private Student post_student;
	private Type post_type;
	private Substance post_substance;
	private String post_date;
	private String post_depict;
	private String post_picture;
	private int post_hot;
	private int post_state;
	public int getPost_hot() {
		return post_hot;
	}
	public void setPost_hot(int post_hot) {
		this.post_hot = post_hot;
	}
	
	
	public int getPost_id() {
		return post_id;
	}
	public void setPost_id(int post_id) {
		this.post_id = post_id;
	}
	public Student getPost_student() {
		return post_student;
	}
	public void setPost_student(Student post_student) {
		this.post_student = post_student;
	}
	public Type getPost_type() {
		return post_type;
	}
	public void setPost_type(Type post_type) {
		this.post_type = post_type;
	}
	public Substance getPost_substance() {
		return post_substance;
	}
	public void setPost_substance(Substance post_substance) {
		this.post_substance = post_substance;
	}
	public String getPost_date() {
		return post_date;
	}
	public void setPost_date(String post_date) {
		this.post_date = post_date;
	}
	public String getPost_depict() {
		return post_depict;
	}
	public void setPost_depict(String post_depict) {
		this.post_depict = post_depict;
	}
	public String getPost_picture() {
		return post_picture;
	}
	public void setPost_picture(String post_picture) {
		this.post_picture = post_picture;
	}
	public String getPost_title() {
		return post_title;
	}
	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}
	public int getPost_state() {
		return post_state;
	}
	public void setPost_state(int post_state) {
		this.post_state = post_state;
	}
	
}
