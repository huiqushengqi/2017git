package com.etc.jingjing.thread;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.net.Socket;

import com.etc.jingjing.client.ClientShowOnLine;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.util.MyObjectInputStream;

public class ClientShowOnLineRead implements Runnable{

	private Socket socket;
	public ClientShowOnLineRead(Socket socket){
		this.socket=socket;
	}
	@Override
	public void run() {
		try {
			while(true){
				MyObjectInputStream mis = new MyObjectInputStream(socket.getInputStream());
				Object obj=mis.readObject();
				if(obj instanceof Message){
					Message message=(Message) obj;
					if(message.getFlag().equals("response_show_online_users")){
						System.out.println("接收到服务器的响应");
						String str1=(String) message.getContain();
						String array[]=str1.split("!");
						for (int i = 0; i < array.length; i++) {
							ClientShowOnLine.dlm.addElement(array[i]);
						}
					}
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
