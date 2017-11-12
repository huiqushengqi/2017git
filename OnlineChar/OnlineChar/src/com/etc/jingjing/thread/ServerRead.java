package com.etc.jingjing.thread;

import java.io.IOException;
import java.net.Socket;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import com.etc.jingjing.biz.OnlineUserBiz;
import com.etc.jingjing.biz.impl.OnlineUserBizImpl;
import com.etc.jingjing.biz.impl.UserBizImpl;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.entity.OnlineUser;
import com.etc.jingjing.entity.User;
import com.etc.jingjing.server.Server;
import com.etc.jingjing.util.MyObjectInputStream;
import com.etc.jingjing.util.MyObjectOutputStream;

public class ServerRead implements Runnable {

	private Socket socket,writeSocket;
	private UserBizImpl userbiz=new UserBizImpl();
	private OnlineUserBiz onlineUserbiz=new OnlineUserBizImpl();
	public ServerRead(Socket socket){
		this.socket=socket;
	}
	@Override
	public void run() {
		try {
			while(true){
				MyObjectInputStream mis=new MyObjectInputStream(socket.getInputStream());
				Object obj=mis.readObject();
				if(obj!=null){
					if(obj instanceof Message){
						Message message=(Message) obj;
						System.out.println("收到消息了");
						switch (message.getFlag()) {
						case "show_online_users":
							System.out.println("点击了显示在线用户按钮");
							List<OnlineUser> list=onlineUserbiz.queryAllOnlineUser();
							String str1="";
							for (OnlineUser onLineUser : list) {
								str1=str1+onLineUser.toString()+"!";
							}
							Message message1=new Message();
							message1.setFlag("response_show_online_users");
							message1.setContain(str1);
							MyObjectOutputStream mos=new MyObjectOutputStream(socket.getOutputStream());
							mos.writeObject(message1);
							mos.flush();
							System.out.println(str1);
							System.out.println("返回了显示在线用户的响应");
							break;
						case "back":
							System.out.println("点击了显示在线用户界面的返回按钮");
							break;
						case "single_chat":
//										Server.dlmMessage.addElement(socket.getInetAddress()+"对："+message.getIp()+"说："+message.getContain());
//										writeSocket = Server.socketMap.get("/"+message.getIp()+message.getPort());
//										Message ms=new Message();
//										ms.setFlag("get_chatWitchOne");
//										ms.setContain(message.getContain());
//										ms.setIp(socket.getInetAddress().toString());
//										ms.setPort(""+socket.getPort());
//										//发送给客户端2
//										MyObjectOutputStream mos1=new MyObjectOutputStream(writeSocket.getOutputStream());
//										mos1.writeObject(ms);
//										mos1.flush();
//										Thread.sleep(100);
//										MyObjectOutputStream mos2=new MyObjectOutputStream(socket.getOutputStream());
//										Message message2=new Message();
//										message2.setFlag("response_chatWitchOne_success");
//										mos2.writeObject(message2);
//										mos2.flush();
//										System.out.println("回送特定字符串给客户端1");
							String client1=onlineUserbiz.queryOnlineUserNameByIp(socket.getInetAddress().toString().split("/")[1]+socket.getPort()+"");
							String client2=onlineUserbiz.queryOnlineUserNameByIp(message.getIp());
							
							long time=System.currentTimeMillis();
							Date date=new Date(time);
							DateFormat df=new SimpleDateFormat("M月d日hh时m分s秒");
							String currentTime=df.format(date);
							
							Server.dlmMessage.addElement(currentTime+"\t"+client1+"对："+client2+ "说：" + (String)message.getContain());
							writeSocket = Server.socketMap.get("/"+ message.getIp() + message.getPort());

							Message ms = new Message();
							ms.setContain(message.getContain());
							ms.setFlag("single_chat");
							ms.setIp(socket.getInetAddress().toString());
							ms.setPort("" + socket.getPort());

							MyObjectOutputStream mos1 = new MyObjectOutputStream(writeSocket.getOutputStream());
							mos1.writeObject(ms);
							mos1.flush();
							break;
						case "login_Check":
							MyObjectOutputStream mos3 = new MyObjectOutputStream(socket.getOutputStream());
							User user = (User) message.getContain();
							if (userbiz.checkUserLogin(user.getUser_name(),user.getUser_password())) {
								Message m1 = new Message();
								message.setFlag("login_success");
								// 登录成功发送登录成功标记数据包
								mos3.writeObject(message);
								Server.socketMap.put(socket.getInetAddress().toString()+ socket.getPort(),socket);
								String ip = socket.getInetAddress().toString().split("/")[1];
								OnlineUser olu = new OnlineUser();
								olu.setOnlineuser_ip(ip+socket.getPort());
								olu.setOnlineuser_name(user.getUser_name());
								if (onlineUserbiz.addOnlineUser(olu)) {
									System.out.println("添加到在线用户列表成功");
									List<OnlineUser> list1=onlineUserbiz.queryAllOnlineUser();
									for (String  string : Server.socketMap.keySet()) {
										Socket socket1=Server.socketMap.get(string);
										String str2="";
										for (OnlineUser onLineUser : list1) {
											str2=str2+onLineUser.toString()+"!";
										}
										Message message3=new Message();
										message3.setFlag("response_show_online_users");
										message3.setContain(str2);
										MyObjectOutputStream mos4=new MyObjectOutputStream(socket.getOutputStream());
										mos4.writeObject(message3);
										mos4.flush();
									}
								} else {
									System.out.println("添加到在线用户列表失败");
								}
								Thread.sleep(500);
								
							} else {
								// 登录失败，发送登录失败标记
								Message m2 = new Message();
								message.setFlag("login_failed");
								mos3.writeObject(message);
							}
							break;
						case "register":
							User user2 = (User) message.getContain();
							if(userbiz.isexist(user2.getUser_name())){
								//数据库已经存在该用户名
								MyObjectOutputStream mos4 = new MyObjectOutputStream(socket.getOutputStream());
								Message message3=new Message();
								message3.setFlag("regist_fail");
								mos4.writeObject(message3);
								mos4.flush();
								System.out.println("发送了注册失败标记");
							}else{
								userbiz.addUser(user2);
								MyObjectOutputStream mos4 = new MyObjectOutputStream(socket.getOutputStream());
								Message message3=new Message();
								message3.setFlag("regist_success");
								mos4.writeObject(message3);
								mos4.flush();
								System.out.println("发送了注册成功标记");
							}
							break;
							
						default:
						}
					}
				}
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		

	}

}
