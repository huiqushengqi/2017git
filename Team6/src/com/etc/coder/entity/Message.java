package com.etc.coder.entity;

public class Message {
	private int message_id;//留言id
	private String message_title;//标题
	private String message_text;//留言内容
	private String message_date;//留言的时间
	private User message_user;//留言的用户
	public int getMessage_id() {
		return message_id;
	}
	public void setMessage_id(int messageId) {
		message_id = messageId;
	}
	public String getMessage_title() {
		return message_title;
	}
	public void setMessage_title(String messageTitle) {
		message_title = messageTitle;
	}
	public String getMessage_text() {
		return message_text;
	}
	public void setMessage_text(String messageText) {
		message_text = messageText;
	}
	public String getMessage_date() {
		return message_date;
	}
	public void setMessage_date(String messageDate) {
		message_date = messageDate;
	}
	public User getMessage_user() {
		return message_user;
	}
	public void setMessage_user(User message_user) {
		this.message_user = message_user;
	}
	
	
}
