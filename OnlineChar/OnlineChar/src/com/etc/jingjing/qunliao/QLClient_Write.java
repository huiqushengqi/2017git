package com.etc.jingjing.qunliao;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.util.Map;

import com.etc.jingjing.util.MyObjectOutputStream;

public class QLClient_Write implements Runnable {

	private Socket sk;
	private String str;
	
	public QLClient_Write(String str,Socket sk){
		this.str = str;
		this.sk = sk;
	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		
			try {
				MyObjectOutputStream oos = new MyObjectOutputStream(sk.getOutputStream());
				oos.writeObject(str);
			
				oos.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}

}
