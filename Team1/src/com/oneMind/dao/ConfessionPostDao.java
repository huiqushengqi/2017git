package com.oneMind.dao;

import java.util.List;

import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;

public interface ConfessionPostDao {
 
	//��ӱ��ǽ����
	  public boolean addConfession(Post post);
	  //��ҳ��ѯ���ǽ����
	  public List<Post> queryConfessionByPage(int page,int size);
	  //����id��ѯѧ��
	  public Student queryById(int id);
	  //��ȡ���ǽ������
	  public int getcount();
	  //����id��ѯpost
	  public Post queryConfessionById(int id);
	  //�������
	  public boolean addComment(Comment comment);
	  //��������id��ѯ����
	  public List<Comment> queryComByPost(int id);
}
