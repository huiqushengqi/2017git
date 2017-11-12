package com.etc.jingjing.thread;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.Socket;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.etc.jingjing.client.Client;
import com.etc.jingjing.client.ClientMain;
import com.etc.jingjing.client.ClientShowOnLine;
import com.etc.jingjing.client.SignerClient;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.entity.OnlineUser;
import com.etc.jingjing.util.MyObjectInputStream;
import com.etc.jingjing.util.MyStaticFrame;
import com.etc.jingjing.util.SignerClientToClientMain;

//显示在线用户
public class ClientMainRead implements Runnable{
	private Socket socket;
	public static Map<String, String> map=new HashMap<String, String>();//ip,name
	public ClientMainRead(Socket socket){
		this.socket=socket;
	}
	@Override
	public void run() {
			MyObjectInputStream mis;
			try {
				while(true){
					mis = new MyObjectInputStream(socket.getInputStream());
					Object obj=mis.readObject();
					if(obj!=null){
						if(obj instanceof Message){
							Message message=(Message) obj;
							System.out.println("接收到服务器的响应");
							switch (message.getFlag()) {
							case "response_show_online_users":
								String str1=(String) message.getContain();
								String array[]=str1.split("!");
								ClientShowOnLine.dlm.removeAllElements();
								for (int j = 0; j < array.length; j++) {
									ClientShowOnLine.dlm.addElement(array[j]);
									ClientMainRead.map.put(array[j].split("/")[1], array[j].split("/")[2]);
								}
								break;
							case "single_chat":
								//接收到一条私聊消息,打开私聊窗口
//								if(ClientMain.chatwitchone.containsKey(message.getIp())){
//									//已经打开了和另一个客户端私聊的界面
//								}else{
//									//没有打开和另一个客户端私聊的界面
//									String name="";
//									for (String key : ClientMainRead.map.keySet()) {
//										if(key.equals(message.getIp())){
//											name=ClientMainRead.map.get(key);
//										}
//									}
//									SignerClient clientSiliao=new SignerClient(message.getIp(), name, socket);
//									clientSiliao.setVisible(true);
//								}
								long time = System.currentTimeMillis();
								Date date = new Date(time);
								DateFormat df = new SimpleDateFormat("M月d日hh时m分s秒");
								String currentTime = df.format(date);
								SignerClient.dlmClinetMessage.addElement(currentTime+ "     " + SignerClient.name + "说："+ message.getContain());
								
								break;
							case "response_chatWitchOne_success":
								//接收到发送私聊消息成功标记
								break;
							case "send_File":
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
									
									SignerClient.dlmClinetMessage.addElement("成功接收："+ file.getName());
								}
								break;
							case "snake":
								long time1 = System.currentTimeMillis();
								Date date1 = new Date(time1);
								DateFormat df1 = new SimpleDateFormat("M月d日hh时m分s秒");
								String currentTime1 = df1.format(date1);
								
								SignerClient.dlmClinetMessage.addElement(currentTime1+ "     " + SignerClient.name + "对你"+ message.getContain());
								
								new Thread() {
									@Override
									public void run() {
										for (int i = 0; i < 20; i++) {// 使用for循环让窗体震动20次
											int newPoint = (int) (100 + Math.pow(-1, i) * 10);// 根据循环次数计算新点的位置
											MyStaticFrame.signerClient.setLocation(newPoint, newPoint);// 设置窗体的显示位置
											try {
												Thread.sleep(50);// 线程休眠0.05秒来实现动态效果
											} catch (InterruptedException e) {
												e.printStackTrace();
											}
										}
									}
								}.start();// 启动新线程
								break;
							default:
								break;
							}
						}
					}
				} 
			} catch (IOException e) {
				e.printStackTrace();
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
	}
//	@Override
//	public void ctrlSigner() {
//		// TODO Auto-generated method stub
//		
//	}
}
