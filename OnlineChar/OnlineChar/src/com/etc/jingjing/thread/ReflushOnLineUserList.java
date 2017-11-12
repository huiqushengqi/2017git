package com.etc.jingjing.thread;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.DefaultListModel;

import com.etc.jingjing.biz.UserBiz;
import com.etc.jingjing.biz.impl.UserBizImpl;
import com.etc.jingjing.client.ClientShowOnLine;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.entity.OnlineUser;
import com.etc.jingjing.util.MyObjectOutputStream;

public class ReflushOnLineUserList implements Runnable {
	private Socket socket;
	private UserBiz biz=new UserBizImpl();
	private List<OnlineUser> list;
	private DefaultListModel<String> dlm=ClientShowOnLine.dlm;
	public ReflushOnLineUserList(Socket socket){
		this.socket=socket;
	}
	@Override
	public void run() {
		try {
			MyObjectOutputStream  mos = new MyObjectOutputStream(socket.getOutputStream());
				Message message=new Message();
				message.setFlag("show_online_users");
				mos.writeObject(message);
				System.out.println("∑¢ÀÕ¡À«Î«Û");
				Thread.sleep(5000);
			} catch (IOException e) {
				e.printStackTrace();
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
	}
}
