package com.etc.pili8la.entity;

public class Comment {
   private int comment_id;
   private int comment_user;
   private int comment_comic;
   private int comment_music;
   private int comment_video;
   private String comment_content;
   private String comment_date;
   private int comment_thumb;
public int getComment_thumb() {
	return comment_thumb;
}
public void setComment_thumb(int comment_thumb) {
	this.comment_thumb = comment_thumb;
}
public int getComment_id() {
	return comment_id;
}
public void setComment_id(int comment_id) {
	this.comment_id = comment_id;
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
public int getComment_user() {
	return comment_user;
}
public void setComment_user(int comment_user) {
	this.comment_user = comment_user;
}
public int getComment_comic() {
	return comment_comic;
}
public void setComment_comic(int comment_comic) {
	this.comment_comic = comment_comic;
}
public int getComment_music() {
	return comment_music;
}
public void setComment_music(int comment_music) {
	this.comment_music = comment_music;
}
public int getComment_video() {
	return comment_video;
}
public void setComment_video(int comment_video) {
	this.comment_video = comment_video;
}
   
   
}
