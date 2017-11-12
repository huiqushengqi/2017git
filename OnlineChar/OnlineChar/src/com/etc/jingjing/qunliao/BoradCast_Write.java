package com.etc.jingjing.qunliao;

import java.io.IOException;
import java.io.OutputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.etc.jingjing.util.MyObjectOutputStream;

public class BoradCast_Write implements Runnable {

	
	private String str;
	
	List<String> list = new ArrayList<String>();
	public BoradCast_Write(String str){
		this.str = str;
	
	}
	@Override
	public void run() {
		// TODO Auto-generated method stub
		
		for (String s : QL_Server.map.keySet()) {
			
			try {
				MyObjectOutputStream oos = new MyObjectOutputStream(QL_Server.map.get(s).getOutputStream());
				
				
				oos.writeObject(s+"@chat");
			    oos.flush();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			
		}
		
		
		
		
		
		
		
	}
	
	
	
	
	
}
