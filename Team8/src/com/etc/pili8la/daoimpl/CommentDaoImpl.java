package com.etc.pili8la.daoimpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.etc.pili8la.dao.CommentDao;
import com.etc.pili8la.entity.Comment;
import com.etc.pili8la.entity.User;
import com.etc.pili8la.util.JDBCUtil;
/**
 * 评论dao层实现方法
 * @author lx
 *
 */
public class CommentDaoImpl implements CommentDao{
	JDBCUtil util=new JDBCUtil();
	/**
	 * 添加一条评论
	 */
	public boolean addComment(Comment comment) {
		int i=0;
		if(comment.getComment_comic()==0&&comment.getComment_music()==0){
			//判断是否为视频
			i=util.update("insert into p_comment(comment_userid,comment_video,comment_content,comment_date) values(?,?,?,?)",comment.getComment_user(),comment.getComment_video(),comment.getComment_content(),comment.getComment_date());
		}else if(comment.getComment_video()==0&&comment.getComment_comic()==0){
			//判读是否为音乐
			i=util.update("insert into p_comment(comment_userid,comment_music,comment_content,comment_date) values(?,?,?,?)",comment.getComment_user(),comment.getComment_music(),comment.getComment_content(),comment.getComment_date());
		}else{
			//判断是否为漫画
			i=util.update("insert into p_comment(comment_userid,comment_video,comment_content,comment_date) values(?,?,?,?)",comment.getComment_user(),comment.getComment_comic(),comment.getComment_content(),comment.getComment_date());
		}
		
		if(i>0){
			return true;
		}
		return false;
	}
	/**
	 * 根据评论id删除评论
	 */
	public boolean deleteComment(int comment_id) {
		int i=util.update("delete from p_comment where comment_id=?", comment_id);
		if(i>0){
			return true;
		}
		return false;
	}
	/**
	 * 根据漫画id查询评论
	 */
	public List<Comment> queryComicCommentById(int comic_id) {
		List<Comment> list=new ArrayList<Comment>();
		Comment comment=null;
		
		ResultSet rs=util.query("select * from p_comment where comment_comic=?", comic_id);
		try {
			while(rs.next()){
				comment=new Comment();
				comment.setComment_id(rs.getInt("comment_id"));
				comment.setComment_user(rs.getInt("comment_userid"));
				comment.setComment_comic(rs.getInt("comment_comic"));
				comment.setComment_music(rs.getInt("comment_music"));
				comment.setComment_video(rs.getInt("comment_video"));
				comment.setComment_content(rs.getString("comment_content"));
				comment.setComment_date(rs.getString("comment_date"));
				comment.setComment_thumb(rs.getInt("comment_thumb"));
				
				list.add(comment);

				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	/**
	 * 根据视频id查询评论
	 */
	public List<Comment> queryVideoCommentById(int video_id) {
		List<Comment> list=new ArrayList<Comment>();
		Comment comment=null;
		
		ResultSet rs=util.query("select * from p_comment where comment_video=?", video_id);
		try {
			while(rs.next()){
				comment=new Comment();
				comment.setComment_id(rs.getInt("comment_id"));
				comment.setComment_user(rs.getInt("comment_userid"));
				comment.setComment_comic(rs.getInt("comment_comic"));
				comment.setComment_music(rs.getInt("comment_music"));
				comment.setComment_video(rs.getInt("comment_video"));
				comment.setComment_content(rs.getString("comment_content"));
				comment.setComment_date(rs.getString("comment_date"));
				comment.setComment_thumb(rs.getInt("comment_thumb"));
				
				list.add(comment);

				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	/**
	 * 根据音乐id查询评论
	 */
	public List<Comment> queryMusicCommentById(int music_id) {
		List<Comment> list=new ArrayList<Comment>();
		Comment comment=null;
		
		ResultSet rs=util.query("select * from p_comment where comment_music=?", music_id);
		try {
			while(rs.next()){
				comment=new Comment();
				comment.setComment_id(rs.getInt("comment_id"));
				comment.setComment_user(rs.getInt("comment_userid"));
				comment.setComment_comic(rs.getInt("comment_comic"));
				comment.setComment_music(rs.getInt("comment_music"));
				comment.setComment_video(rs.getInt("comment_video"));
				comment.setComment_content(rs.getString("comment_content"));
				comment.setComment_date(rs.getString("comment_date"));
				comment.setComment_thumb(rs.getInt("comment_thumb"));
				
				list.add(comment);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	/**
	 * 根据漫画id获取评论条数
	 */
	public int getComicCommentCountById(int comic_id) {
		int i=0;
		ResultSet rs= util.query("select count(*) as a from p_comment where comment_comic=?",comic_id);
		try {
			if(rs.next()){
				i=rs.getInt("a");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return i;
	}
	/**
	 * 根据视频id获取评论条数
	 */
	public int getVideoCommentCountById(int video_id) {
		int i=0;
		ResultSet rs= util.query("select count(*) as a from p_comment where comment_video=?",video_id);
		try {
			if(rs.next()){
				i=rs.getInt("a");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return i;
	}
	/**
	 * 根据音乐id获取评论条数
	 */
	public int getMusicCommentCountById(int music_id) {
		int i=0;
		ResultSet rs= util.query("select count(*) as a from p_comment where comment_music=?",music_id);
		try {
			if(rs.next()){
				i=rs.getInt("a");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		return i;
	}
	/**
	 * 查询漫画分页评论
	 */
	public List<Comment> queryComicByPage(int comic_id, int page, int size) {
		List<Comment> list=new ArrayList<Comment>();
		Comment comment=null;
		
		ResultSet rs=util.query("SELECT * FROM(SELECT A.*,ROWNUM RN FROM (SELECT * FROM p_comment where comment_comic=?) A WHERE ROWNUM <=?) WHERE RN >=?",comic_id,page*size,(page-1)*size);
		try {
			while(rs.next()){
				comment=new Comment();
				comment.setComment_id(rs.getInt("comment_id"));
				comment.setComment_user(rs.getInt("comment_userid"));
				comment.setComment_comic(rs.getInt("comment_comic"));
				comment.setComment_music(rs.getInt("comment_music"));
				comment.setComment_video(rs.getInt("comment_video"));
				comment.setComment_content(rs.getString("comment_content"));
				comment.setComment_date(rs.getString("comment_date"));
				comment.setComment_thumb(rs.getInt("comment_thumb"));
				
				list.add(comment);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	/**
	 * 查询视频分页评论
	 */
	public List<Comment> queryVideoByPage(int video_id, int page, int size) {
		List<Comment> list=new ArrayList<Comment>();
		Comment comment=null;
		
		ResultSet rs=util.query("SELECT * FROM(SELECT A.*,ROWNUM RN FROM (SELECT * FROM p_comment where comment_video=?) A WHERE ROWNUM <=?) WHERE RN >=?",video_id,page*size,(page-1)*size);
		try {
			while(rs.next()){
				comment=new Comment();
				comment.setComment_id(rs.getInt("comment_id"));
				comment.setComment_user(rs.getInt("comment_userid"));
				comment.setComment_comic(rs.getInt("comment_comic"));
				comment.setComment_music(rs.getInt("comment_music"));
				comment.setComment_video(rs.getInt("comment_video"));
				comment.setComment_content(rs.getString("comment_content"));
				comment.setComment_date(rs.getString("comment_date"));
				comment.setComment_thumb(rs.getInt("comment_thumb"));
				
				list.add(comment);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	/**
	 * 查询音乐分页评论
	 */
	public List<Comment> queryMusicByPage(int music_id, int page, int size) {
		List<Comment> list=new ArrayList<Comment>();
		Comment comment=null;
		
		ResultSet rs=util.query("SELECT * FROM(SELECT A.*,ROWNUM RN FROM (SELECT * FROM p_comment where comment_music=?) A WHERE ROWNUM <=?) WHERE RN >=?",music_id,page*size,(page-1)*size);
		try {
			while(rs.next()){
				comment=new Comment();
				comment.setComment_id(rs.getInt("comment_id"));
				comment.setComment_user(rs.getInt("comment_userid"));
				comment.setComment_comic(rs.getInt("comment_comic"));
				comment.setComment_music(rs.getInt("comment_music"));
				comment.setComment_video(rs.getInt("comment_video"));
				comment.setComment_content(rs.getString("comment_content"));
				comment.setComment_date(rs.getString("comment_date"));
				comment.setComment_thumb(rs.getInt("comment_thumb"));
				
				list.add(comment);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	/**
	 * 根据漫画id查询所有用户分页
	 */
	public List<User> queryComicUserByPage(int comic_id, int page, int size) {
		List<User> list=new ArrayList<User>();
		User user=null;
		ResultSet rs=util.query("SELECT * FROM(SELECT A.*,ROWNUM RN FROM (SELECT * FROM p_comment where comment_comic=?) A WHERE ROWNUM <=?),p_user WHERE RN >=? and comment_userid=user_id",comic_id,page*size,(page-1)*size);
		try {
			while(rs.next()){
				user=new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setUser_head(rs.getString("user_head"));
				user.setUser_name(rs.getString("user_name"));
				
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	/**
	 * 根据视频id查询所有用户分页
	 */
	public List<User> queryVideoUserByPage(int video_id, int page, int size) {
		List<User> list=new ArrayList<User>();
		User user=null;
		ResultSet rs=util.query("SELECT * FROM(SELECT A.*,ROWNUM RN FROM (SELECT * FROM p_comment where comment_video=?) A WHERE ROWNUM <=?),p_user WHERE RN >=? and comment_userid=user_id",video_id,page*size,(page-1)*size);
		try {
			while(rs.next()){
				user=new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setUser_head(rs.getString("user_head"));
				user.setUser_name(rs.getString("user_name"));
				
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	/**
	 * 根据音乐id查询所有用户分页
	 */
	public List<User> queryMusicUserByPage(int music_id, int page, int size) {
		List<User> list=new ArrayList<User>();
		User user=null;
		ResultSet rs=util.query("SELECT * FROM(SELECT A.*,ROWNUM RN FROM (SELECT * FROM p_comment where comment_music=?) A WHERE ROWNUM <=?),p_user WHERE RN >=? and comment_userid=user_id",music_id,page*size,(page-1)*size);
		try {
			while(rs.next()){
				user=new User();
				user.setUser_id(rs.getInt("user_id"));
				user.setUser_head(rs.getString("user_head"));
				user.setUser_name(rs.getString("user_name"));
				
				list.add(user);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			util.closeAll();
		}
		
		return list;
	}
	
}
