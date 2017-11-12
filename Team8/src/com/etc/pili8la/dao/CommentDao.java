package com.etc.pili8la.dao;

import java.util.List;

import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.entity.User;
/**
 * 评论接口
 * @author lx
 *
 */
public interface CommentDao {
	//增加一条评论
	public boolean addComment(Comment comment);
	
	//根据id删除评论
	public boolean deleteComment(int comment_id);
	
	//根据漫画id查询漫画评论
	public List<Comment> queryComicCommentById(int comic_id);
	
	//根据视频id查询视频评论
	public List<Comment> queryVideoCommentById(int video_id);
	
	//根据音乐id查询音乐评论
	public List<Comment> queryMusicCommentById(int music_id);
	
	//根据漫画id获取评论条数
	public int getComicCommentCountById(int comic_id);
	
	//根据视频id获取评论条数
	public int getVideoCommentCountById(int video_id);
	
	//根据音乐id获取评论条数
	public int getMusicCommentCountById(int music_id);
	
	//根据漫画id，page和size分页查询视频评论
	public List<Comment> queryComicByPage(int comic_id,int page,int size);
	
	//根据视频id，page和size分页查询视频评论
	public List<Comment> queryVideoByPage(int video_id,int page,int size);

	//根据音乐id，page和size分页查询视频评论
	public List<Comment> queryMusicByPage(int music_id,int page,int size);
	
	//根据漫画id，page和size分页查询用户
	public List<User> queryComicUserByPage(int comic_id,int page,int size);
	
	//根据视频id，page和size分页查询用户
	public List<User> queryVideoUserByPage(int video_id,int page,int size);
	
	//根据音乐id，page和size分页查询用户
	public List<User> queryMusicUserByPage(int music_id,int page,int size);
}
