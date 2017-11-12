package com.etc.jingjing.thread;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.JFrame;

import com.etc.jingjing.client.SignerClient;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.util.MyObjectInputStream;

public class SignerClientRead implements Runnable {
	private Socket socket;
	private InputStream is;
	private MyObjectInputStream ois;
	private Message message;
	private String ip;
	private String name;
	private JFrame frame;
	
	public SignerClientRead(Socket socket, Message message, String ip,
			String name, JFrame frame) {
		this.socket = socket;
		this.message = message;
		this.ip = ip;
		this.name = name;
		this.frame = frame;
	}

	@Override
	public void run() {

		// OnlineUserDao ou=new OnlineUserDaoImpl();
		// 获取socket对象中输入流对象
//		try {
//		} catch (IOException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
		while (true) {
			// 不断的尝试读取流中的内容
			try {
				is = socket.getInputStream();
				ois = new MyObjectInputStream(is);
				Object obj=ois.readObject();
				if(obj!=null){
					if(obj instanceof Message){
						Message message=(Message) obj;
						if ((message.getIp() + message.getPort()).equals(ip)&& (message.getFlag()).equals("send_File")) {
							File file = new File("E:/test/"+ message.getContain());
							FileOutputStream fos = new FileOutputStream(file);
							byte[] buffer = new byte[1024];
							
							InputStream fileis = socket.getInputStream();
							int i = 0;
							if(fileis.available()>0){
								while (fileis.read(buffer) > 0) {
									fos.write(buffer);
									i++;
									System.out.println("正在写" + i);
								}
								System.out.println("写完了");
								
								SignerClient.dlmClinetMessage.addElement("成功接收："
										+ file.getName());
							}
							
						} else if ((message.getIp() + message.getPort()).equals(ip)&& (message.getFlag()).equals("single_chat")) {
							long time = System.currentTimeMillis();
							Date date = new Date(time);
							DateFormat df = new SimpleDateFormat("M月d日hh时m分s秒");
							String currentTime = df.format(date);
							
							SignerClient.dlmClinetMessage.addElement(currentTime+ "     " + name + "说："+ message.getContain());
						}else if((message.getIp() + message.getPort()).equals(ip)&& (message.getFlag()).equals("snake")) {
							long time = System.currentTimeMillis();
							Date date = new Date(time);
							DateFormat df = new SimpleDateFormat("M月d日hh时m分s秒");
							String currentTime = df.format(date);
							
							SignerClient.dlmClinetMessage.addElement(currentTime+ "     " + name + "对你"+ message.getContain());
							
							new Thread() {
								
								@Override
								public void run() {
									for (int i = 0; i < 20; i++) {// 使用for循环让窗体震动20次
										int newPoint = (int) (100 + Math.pow(-1, i) * 10);// 根据循环次数计算新点的位置
										frame.setLocation(newPoint, newPoint);// 设置窗体的显示位置
										try {
											Thread.sleep(50);// 线程休眠0.05秒来实现动态效果
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
									}
								}
							}.start();// 启动新线程
						}
					}
					}
//				message = (Message) ois.readObject();
				// String
				// str1=ou.queryOnlineUserNameByIp(message.getIp()+message.getPort());

			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();

			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}

}
