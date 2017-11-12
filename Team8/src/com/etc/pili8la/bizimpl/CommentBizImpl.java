package com.etc.pili8la.bizimpl;

import java.util.List;

import com.etc.pili8la.biz.CommentBiz;
import com.etc.pili8la.dao.CommentDao;
import com.etc.pili8la.daoimpl.CommentDaoImpl;
import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.entity.User;
/**
 * 评论biz层
 * @author lx
 *
 */
public class CommentBizImpl implements CommentBiz{
	
	CommentDao dao=new CommentDaoImpl();
	/**
	 * 判断comment类是否非法
	 */
	public boolean addComment(Comment comment) {
		if(comment==null){
			return false;
			
		}
		return dao.addComment(comment);
	}
	/**
	 * 判断id是否非法
	 */
	public boolean deleteComment(int comment_id) {
		if(comment_id<0){
			return false;
		}
		return dao.deleteComment(comment_id);
	}
	/**
	 * 判断漫画id是否非法
	 */
	public List<Comment> queryComicCommentById(int comic_id) {
		if(comic_id<0){
			return null;
		}
		return dao.queryComicCommentById(comic_id);
	}
	/**
	 * 判断视频id是否非法
	 */
	public List<Comment> queryVideoCommentById(int video_id) {
		if(video_id<0){
			return null;
		}
		return dao.queryVideoCommentById(video_id);
	}
	/**
	 * 判断音乐id是否非法
	 */
	public List<Comment> queryMusicCommentById(int music_id) {
		if(music_id<0){
			return null;
		}
		return dao.queryMusicCommentById(music_id);
	}
	/**
	 * 判断漫画id是否非法
	 */
	public int getComicCommentCountById(int comic_id) {
		if(comic_id<0){
			return 0;
		}
		return dao.getComicCommentCountById(comic_id);
	}
	/**
	 * 判断视频id是否非法
	 */
	public int getVideoCommentCountById(int video_id) {
		if(video_id<0){
			return 0;
		}
		return dao.getVideoCommentCountById(video_id);
	}
	/**
	 * 判断音乐id是否非法
	 */
	public int getMusicCommentCountById(int music_id) {
		if(music_id<0){
			return 0;
		}
		return dao.getMusicCommentCountById(music_id);
	}
	/**
	 * 判断入参是否非法
	 */
	public List<Comment> queryComicByPage(int comic_id, int page, int size) {
		if(comic_id<0||page<0||size<0){
			return null;
		}
		return dao.queryComicByPage(comic_id, page, size);
	}
	/**
	 * 判断入参是否非法
	 */
	public List<Comment> queryVideoByPage(int video_id, int page, int size) {
		if(video_id<0||page<0||size<0){
			return null;
		}
		return dao.queryVideoByPage(video_id, page, size);
	}
	/**
	 * 判断入参是否非法
	 */
	public List<Comment> queryMusicByPage(int music_id, int page, int size) {
		if(music_id<0||page<0||size<0){
			return null;
		}
		return dao.queryMusicByPage(music_id, page, size);
	}
	/**
	 * 判断入参是否非法
	 */
	public List<User> queryComicUserByPage(int comic_id, int page, int size) {
		if(comic_id<0||page<0||size<0){
			return null;
		}
		return dao.queryComicUserByPage(comic_id, page, size);
	}
	/**
	 * 判断入参是否非法
	 */
	public List<User> queryVideoUserByPage(int video_id, int page, int size) {
		if(video_id<0||page<0||size<0){
			return null;
		}
		return dao.queryVideoUserByPage(video_id, page, size);
	}
	/**
	 * 判断入参是否非法
	 */
	public List<User> queryMusicUserByPage(int music_id, int page, int size) {
		if(music_id<0||page<0||size<0){
			return null;
		}
		return dao.queryMusicUserByPage(music_id, page, size);
	}
	
}
