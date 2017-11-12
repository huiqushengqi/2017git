package com.etc.jingjing.qunliao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.etc.jingjing.util.MyObjectOutputStream;

public class ShowOnline implements  Runnable {


	public MyObjectOutputStream oos ;
	public List<String> list = new ArrayList<String>();
	@Override
	public void run() {
		// TODO Auto-generated method stub
		
		for (String s : QL_Server.map.keySet()) {
			
			try {
				oos = new MyObjectOutputStream(QL_Server.map.get(s).getOutputStream());
				list.add(s);
				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		try {
			
			
			
			for (String s : QL_Server.map.keySet()) {
			
			oos = new MyObjectOutputStream(QL_Server.map.get(s).getOutputStream());
			oos.writeObject(list);
			oos.flush();
			
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}

}
