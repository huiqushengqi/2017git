package com.etc.jingjing.thread;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.net.Socket;

import com.etc.jingjing.biz.OnlineUserBiz;
import com.etc.jingjing.biz.UserBiz;
import com.etc.jingjing.biz.impl.OnlineUserBizImpl;
import com.etc.jingjing.biz.impl.UserBizImpl;
import com.etc.jingjing.entity.OnlineUser;

public class ServerReadName implements Runnable {

	private Socket socket;
	private UserBiz userbiz=new UserBizImpl();
	private OnlineUserBiz onlineUserbiz=new OnlineUserBizImpl();
	public ServerReadName(Socket socket){
		this.socket=socket;
	}
	@Override
	public void run() {
		try {
			ObjectInputStream ois=new ObjectInputStream(socket.getInputStream());
				int size=ois.available();
				if(size>0){
					byte[] by=new byte[size];
					ois.read(by);
					String str=new String(by);
					OnlineUser olu=new OnlineUser();
					olu.setOnlineuser_ip(socket.getInetAddress().toString().split("/")[1]);
					olu.setOnlineuser_name(str);
					if(onlineUserbiz.addOnlineUser(olu)){
						System.out.println("添加到在线用户表成功");
					}else{
						System.out.println("添加到在线用户表失败");
					}
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
