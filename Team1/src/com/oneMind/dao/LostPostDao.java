package com.oneMind.dao;

import java.util.List;

import com.oneMind.entity.Comment;
import com.oneMind.entity.Post;
import com.oneMind.entity.Student;

public interface LostPostDao {
	//���ʧ����������
  public boolean addLost(Post post);
  //��ҳ��ѯʧ����������
  public List<Post> queryLostByPage(int page,int size);
  //����id��ѯѧ��
  public Student queryById(int id);
  //��ȡʧ������������
  public int getcount();
  //����id��ѯpost
  public Post queryLostById(int id);
//�������
  public boolean addComment(Comment comment);
  //��������id��ѯ����
  public List<Comment> queryComByPost(int id);
}
