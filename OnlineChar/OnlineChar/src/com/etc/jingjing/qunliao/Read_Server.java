package com.etc.jingjing.qunliao;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.net.Socket;
import java.util.HashMap;
import java.util.Map;

import com.etc.jingjing.util.MyObjectInputStream;

public class Read_Server implements Runnable {


	MyObjectInputStream ois = null;
	private Map<String,Socket> map;
	public Read_Server(Map<String,Socket> map){
		this.map = map;
	}
	
	@Override
	public void run() {
		// TODO Auto-generated method stub
		
		for (String  ip : map.keySet()) {
			try {
				ois = new MyObjectInputStream(map.get(ip).getInputStream());
				Object obj = null;
				while((obj=ois.readObject())!=null){
						if(obj instanceof String){
							String  str = (String) obj;
							//System.out.println(str);
							Thread th = new Thread(new Write_Server(str,map));
							th.start();
						}
						
						
						
						
					}
					
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
