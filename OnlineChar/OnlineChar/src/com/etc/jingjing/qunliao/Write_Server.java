package com.etc.jingjing.qunliao;

import java.io.IOException;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.util.Map;

import com.etc.jingjing.util.MyObjectOutputStream;

public class Write_Server implements Runnable {

	private String str;
	private Map<String,Socket> map;
	public Write_Server(String str,Map<String,Socket> map){
		this.str=str;
		this.map = map;
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		
		for (String  ip : map.keySet()) {
			MyObjectOutputStream oos;
			try {
				oos = new MyObjectOutputStream(map.get(ip).getOutputStream());
				oos.writeObject("");
			    Thread.sleep(10);
				oos.writeObject(str);
				oos.flush();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		
	
		
	}
	
	
		
		
		
		
		
		

	
	
}
