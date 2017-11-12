package com.etc.jingjing.biz;

import java.util.List;

import com.etc.jingjing.entity.OnlineUser;

public interface OnlineUserBiz {
	//��������û�
	public boolean addOnlineUser(OnlineUser ou);
	//ɾ�������û�
	public boolean deleteOnlineUser(int id);
	//�޸������û�    
	public boolean updateOnlinaUser(OnlineUser ou);
	//��ѯ�����û�
	public List<OnlineUser> queryAllOnlineUser();
	//����ip��ѯ�û�
	public String queryOnlineUserByIp(String ip);
	//����ip��ѯ�û���
	public String queryOnlineUserNameByIp(String ip);
}
