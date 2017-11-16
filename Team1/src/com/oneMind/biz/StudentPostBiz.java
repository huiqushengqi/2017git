package com.oneMind.biz;

import java.util.List;

import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;

public interface StudentPostBiz {
	
	//分页查询指定学生指定帖子类型
	public List<Post> queryPostByTypeAndStudentId(int student_id,int type_id,int size,int page);
	
	//获取指定学生指定帖子类型条数
	public int countPostByTypeAndStudentId(int student_id,int type_id);
	
	//根据帖子id删除帖子
	public int delPostById(int post_id);
	
	//根据帖子id查询评论
	public List<Comment> queryCommentByPostId(int post_id);
	
	//删除帖子评论
	public int delCommentById(int commentId);
}
