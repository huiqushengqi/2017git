package com.etc.jingjing.client;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.JTextArea;
import javax.swing.JScrollPane;
import javax.swing.JList;
import javax.swing.JButton;
import javax.swing.JLabel;

import com.etc.jingjing.dao.OnlineUserDao;
import com.etc.jingjing.dao.impl.OnlineUserDaoImpl;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.thread.SignerClientRead;
import com.etc.jingjing.util.MyObjectInputStream;
import com.etc.jingjing.util.MyObjectOutputStream;
import com.etc.jingjing.util.SignerClientToClientMain;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import javax.swing.JTextField;

import java.awt.Font;
import java.awt.SystemColor;

public class SignerClient extends JFrame implements ActionListener{
	private Socket socket;
	private OutputStream os;
	private MyObjectOutputStream oos;
	private InputStream is;
	private MyObjectInputStream ois;
	private JPanel contentPane;
	private JTextArea inputArea;
	private JScrollPane inputScroll, messageScroll;
	private JList showmessage;
	private JButton send, sendFile, snake;
	private JLabel adress_info, adress, port_info, port;
	private Message message;
	public static String name = "";
	private String ip;
	private OnlineUserDao ou = new OnlineUserDaoImpl();
	public static DefaultListModel dlmClinetMessage = new DefaultListModel();
	private JLabel lblNewLabel;
	private JLabel lblNewLabel_1;
	/**
	 * Create the frame.
	 */
	public SignerClient(String ip,String name, Socket socket) {
		this.name=name;
		this.ip=ip;
		this.socket=socket;
		setTitle("与" + name + "聊天中");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 700, 520);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		inputScroll = new JScrollPane();
		inputScroll.setBounds(10, 357, 392, 97);
		contentPane.add(inputScroll);

		inputArea = new JTextArea();
		inputScroll.setViewportView(inputArea);

		messageScroll = new JScrollPane();
		messageScroll.setBounds(10, 10, 392, 291);
		contentPane.add(messageScroll);

		showmessage = new JList(dlmClinetMessage);
		messageScroll.setViewportView(showmessage);
		
		send = new JButton("发送消息");
//		send.setContentAreaFilled(false);
		send.setBackground(SystemColor.activeCaption);
		send.setFont(new Font("幼圆", Font.PLAIN, 15));
		send.addActionListener(this);
		send.setBounds(416, 402, 127, 52);
		contentPane.add(send);

		adress_info = new JLabel("对方IP：");
		adress_info.setBounds(412, 12, 108, 21);
		contentPane.add(adress_info);

		adress = new JLabel("");
		adress.setBounds(412, 43, 108, 21);
		contentPane.add(adress);

		port_info = new JLabel("对方端口：");
		port_info.setBounds(412, 74, 108, 21);
		contentPane.add(port_info);

		port = new JLabel("");
		port.setBounds(412, 105, 108, 21);
		contentPane.add(port);

		sendFile = new JButton("发送文件");
	//	sendFile.setContentAreaFilled(false);
		sendFile.setBackground(SystemColor.info);
		sendFile.setFont(new Font("幼圆", Font.PLAIN, 15));
		sendFile.addActionListener(this);
		sendFile.setBounds(136, 314, 108, 35);
		contentPane.add(sendFile);

		snake = new JButton("窗口抖动");
		snake.setBackground(SystemColor.info);
//		snake.setBackground(SystemColor.activeCaption);
		snake.setFont(new Font("幼圆", Font.PLAIN, 15));
//		snake.setContentAreaFilled(false);
		snake.setBounds(10, 314, 108, 35);
		contentPane.add(snake);
		
		lblNewLabel = new JLabel("");
		lblNewLabel.setIcon(new ImageIcon("image/38.jpg"));
		lblNewLabel.setBounds(0, 0, 694, 493);
		contentPane.add(lblNewLabel);
		
		lblNewLabel_1 = new JLabel("New label");
		lblNewLabel_1.setBounds(547, 10, 121, 83);
		contentPane.add(lblNewLabel_1);

		try {
//			socket = new Socket("127.0.0.1", 8888);
			dlmClinetMessage.addElement("连接成功，可以开始聊天了！");
			os = socket.getOutputStream();
			oos = new MyObjectOutputStream(os);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// 开启读线程
//		Thread th1=new Thread(new SignerClientRead(socket, message, ip, name, this));
//		th1.start();

	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource()==send){
			if (inputArea.getText() != null || inputArea.getText() != "") {
				message = new Message();
				// message.setIp(adress.getText());
				// message.setPort(port.getText());
				message.setContain(inputArea.getText());
				message.setFlag("single_chat");
				message.setIp(ip);
				message.setPort("");

				try {
					os = socket.getOutputStream();
					oos = new MyObjectOutputStream(os);
					oos.writeObject(message);
					oos.flush();

					Thread.sleep(200);
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (InterruptedException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				dlmClinetMessage.addElement(message.getContain());
				inputArea.setText("");
			} else {
				JOptionPane.showMessageDialog(null, "发送消息不能为空！", "错误",
						JOptionPane.ERROR_MESSAGE);
			}
		}else if(e.getSource()==sendFile){
			JFileChooser jfc = new JFileChooser();
			jfc.setFileSelectionMode(JFileChooser.FILES_ONLY);
			jfc.showDialog(new JLabel(), "选择");
			File file = jfc.getSelectedFile();

			if (file != null) {
				name = ou.queryOnlineUserNameByIp("/" + ip
						 );
				setTitle("与" + name + "聊天中");

				message = new Message();
				// message.setIp(adress.getText());
				// message.setPort(port.getText());
				message.setFlag("send_File");
				message.setContain(file.getName());
				System.out.println(file.getFreeSpace());
				System.out.println(file.getTotalSpace());
				System.out.println(file.getUsableSpace());
				
				message.setIp(ip);
				message.setPort("");
				
				try {
					os = socket.getOutputStream();
					oos = new MyObjectOutputStream(os);
					oos.writeObject(message);
					oos.flush();
					DataInputStream dis=new DataInputStream(new FileInputStream(file));  
		            DataOutputStream dos=new DataOutputStream(socket.getOutputStream());  
		            //ObjectOutputStream oos=new ObjectOutputStream(s.getOutputStream());  
		            //oos.writeObject(f);  
		            dos.writeLong(file.length());  
		            dos.writeUTF(file.getName());  
		            System.out.println("长度："+file.length());  
		            int count=-1,sum=0;
		            byte[] buffer=new byte[1024*1024];  
		            while((count=dis.read(buffer))!=-1){  
		                dos.write(buffer,0,count);  
		                sum+=count;  
		                System.out.println("以传输"+sum+"byte");  
		            } 
		            System.out.println("发送完毕！");  
		            dos.flush();
				} catch (IOException e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
				
				
//				byte[] buffer = new byte[1024];
//				FileInputStream fis = null;
//
//				// 这里要重新new一个os
//
//				try {
//					os = socket.getOutputStream();
//					oos = new MyObjectOutputStream(os);
//					oos.writeObject(message);
//					oos.flush();
//
//					fis = new FileInputStream(file);
//
//					while (fis.read(buffer) > 0) {
//						os.write(buffer);
//						os.flush();
//					}
//					
//				} catch (IOException e1) {
//					// TODO Auto-generated catch block
//					e1.printStackTrace();
//				}
//				dlmClinetMessage.addElement("成功发送：" + file.getName());
			}
		}else if(e.getSource()==snake){
			new Thread(new Runnable() {
				
				@Override
				public void run() {
					for (int i = 0; i < 20; i++) {// 使用for循环让窗体震动20次
						int newPoint = (int) (100 + Math.pow(-1, i) * 10);// 根据循环次数计算新点的位置
						setLocation(newPoint, newPoint);// 设置窗体的显示位置
						try {
							Thread.sleep(50);// 线程休眠0.05秒来实现动态效果
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}	
				}
			}).start();// 启动新线程
			
			message = new Message();
			// message.setIp(adress.getText());
			// message.setPort(port.getText());
			message.setContain("发送了一个抖动！");
			message.setFlag("snake");
			message.setIp(ip);
			message.setPort("");

			try {
				os = socket.getOutputStream();
				oos = new MyObjectOutputStream(os);
				oos.writeObject(message);
				oos.flush();

				Thread.sleep(200);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			dlmClinetMessage.addElement("你发送了一个抖动！");
		}
	}

}
