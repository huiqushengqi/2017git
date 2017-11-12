package com.etc.jingjing.thread;

import java.io.IOException;
import java.net.Socket;

import com.etc.jingjing.biz.impl.UserBizImpl;
import com.etc.jingjing.client.Client;
import com.etc.jingjing.client.ClientMain;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.util.MyInterface;
import com.etc.jingjing.util.MyObjectInputStream;

public class ClientLoginRead implements Runnable {

	private Socket socket;
	private UserBizImpl biz=new UserBizImpl();
	private Client frame;
	private MyInterface my;
	public ClientLoginRead(Socket socket,Client frame){
		this.socket=socket;
		this.frame=frame;
		this.my=frame;
	}
	@Override
	public void run() {
			try {
				System.out.println("�����˿ͻ��˼����߳�");
				MyObjectInputStream ois=new MyObjectInputStream(socket.getInputStream());
				while(true){
					Object obj=ois.readObject();
					if(obj!=null){
						if(obj instanceof Message){
							Message message=(Message) obj;
							if(message.getFlag().equals("login_success")){
								//��֤��¼�ɹ�
								System.out.println("��֤�ɹ�");
								
								my.notiflush();
								
//								ClientMain cm=new ClientMain(socket);
//								cm.setVisible(true);
								//frame.dispose();
							}else if(message.getFlag().equals("login_failed")){
								//��֤��¼ʧ��
							}
							break;
						}
					}
				}
			} catch (IOException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
	}
}
