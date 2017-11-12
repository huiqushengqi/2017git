package com.etc.jingjing.biz;

import java.util.List;

import com.etc.jingjing.entity.User;

public interface UserBiz {
	//����û�
			public boolean addUser(User u);
			//ɾ���û�
			public boolean deleteUser(int id);
			//�޸��û�����    
			public boolean updateUser(User u);
			//��ѯ�����û�
			public List<User> queryAllUser();
			//����ip��ѯ�û�
			public List<User> queryAllUserByIp(String ip);
			//��֤�û���¼
			public boolean checkUserLogin(String name,String pwd);
			//����ip��ѯ�û���
			public String queryUsernameByIp(String ip);
			//����ip��ѯ����
			public String queryUserpwdByIp(String ip);
			public boolean isexist(String user_name) ;
}
