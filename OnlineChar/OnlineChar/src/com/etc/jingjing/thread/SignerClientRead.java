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
		// ��ȡsocket����������������
//		try {
//		} catch (IOException e1) {
//			// TODO Auto-generated catch block
//			e1.printStackTrace();
//		}
		while (true) {
			// ���ϵĳ��Զ�ȡ���е�����
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
									System.out.println("����д" + i);
								}
								System.out.println("д����");
								
								SignerClient.dlmClinetMessage.addElement("�ɹ����գ�"
										+ file.getName());
							}
							
						} else if ((message.getIp() + message.getPort()).equals(ip)&& (message.getFlag()).equals("single_chat")) {
							long time = System.currentTimeMillis();
							Date date = new Date(time);
							DateFormat df = new SimpleDateFormat("M��d��hhʱm��s��");
							String currentTime = df.format(date);
							
							SignerClient.dlmClinetMessage.addElement(currentTime+ "     " + name + "˵��"+ message.getContain());
						}else if((message.getIp() + message.getPort()).equals(ip)&& (message.getFlag()).equals("snake")) {
							long time = System.currentTimeMillis();
							Date date = new Date(time);
							DateFormat df = new SimpleDateFormat("M��d��hhʱm��s��");
							String currentTime = df.format(date);
							
							SignerClient.dlmClinetMessage.addElement(currentTime+ "     " + name + "����"+ message.getContain());
							
							new Thread() {
								
								@Override
								public void run() {
									for (int i = 0; i < 20; i++) {// ʹ��forѭ���ô�����20��
										int newPoint = (int) (100 + Math.pow(-1, i) * 10);// ����ѭ�����������µ��λ��
										frame.setLocation(newPoint, newPoint);// ���ô������ʾλ��
										try {
											Thread.sleep(50);// �߳�����0.05����ʵ�ֶ�̬Ч��
										} catch (InterruptedException e) {
											e.printStackTrace();
										}
									}
								}
							}.start();// �������߳�
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
