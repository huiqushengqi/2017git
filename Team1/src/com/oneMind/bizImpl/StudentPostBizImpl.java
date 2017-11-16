package com.oneMind.bizImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oneMind.biz.StudentPostBiz;
import com.oneMind.dao.StudentPostDao;
import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
@Service
public class StudentPostBizImpl implements StudentPostBiz {

	@Resource
	private StudentPostDao dao;
	
	@Override
	public List<Post> queryPostByTypeAndStudentId(int student_id, int type_id,
			int size, int page) {
		// TODO Auto-generated method stub
		return dao.queryPostByTypeAndStudentId(student_id, type_id, size, page);
	}

	@Override
	public int countPostByTypeAndStudentId(int student_id, int type_id) {
		// TODO Auto-generated method stub
		return dao.countPostByType(student_id, type_id);
	}

	@Override
	public int delPostById(int post_id) {
		// TODO Auto-generated method stub
		return dao.delPostById(post_id);
	}

	@Override
	public List<Comment> queryCommentByPostId(int post_id) {
		// TODO Auto-generated method stub
		return dao.queryCommentByPostId(post_id);
	}

	@Override
	public int delCommentById(int commentId) {
		// TODO Auto-generated method stub
		return dao.delCommentById(commentId);
	}

}
