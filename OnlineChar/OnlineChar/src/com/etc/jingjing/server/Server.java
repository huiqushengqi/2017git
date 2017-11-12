package com.etc.jingjing.server;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.UnknownHostException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.JSeparator;
import javax.swing.JTextArea;
import javax.swing.border.EmptyBorder;

import com.etc.jingjing.biz.OnlineUserBiz;
import com.etc.jingjing.biz.UserBiz;
import com.etc.jingjing.biz.impl.OnlineUserBizImpl;
import com.etc.jingjing.biz.impl.UserBizImpl;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.entity.OnlineUser;
import com.etc.jingjing.entity.User;
import com.etc.jingjing.thread.ServerRead;
import com.etc.jingjing.thread.ReflushOnLineUserList;
import com.etc.jingjing.util.MyObjectInputStream;
import com.etc.jingjing.util.MyObjectOutputStream;

import java.awt.Font;
import java.awt.Color;
import java.awt.SystemColor;

public class Server extends JFrame {
	private JPanel contentPane;
	private JList onlineNumber, onlineMessage;
	private JScrollPane onlineNumberScrollpane, messageScrollPane,inputScrollPane;
	private JTextArea input;
	private JButton send, startServer, stopServer;
	private JLabel localIP, ipAdress,onlineNumb,message,state,isStart,number;
	private boolean startFlag=false;
	private ServerSocket serverSocket;
	private Socket socket;
	private OutputStream os;
	private MyObjectOutputStream oos;
	private Message ms=new Message();
	private UserBizImpl userbiz=new UserBizImpl();
	public static DefaultListModel dlmNumber = new DefaultListModel();
	public static DefaultListModel dlmMessage = new DefaultListModel();
	public static Map<String, Socket> socketMap = new HashMap<String, Socket>();
	public OnlineUserBiz onlineuserbiz=new OnlineUserBizImpl();
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Server frame = new Server();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Server() {
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 950, 620);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		onlineNumberScrollpane = new JScrollPane();
		onlineNumberScrollpane.getViewport().setOpaque(false);
		onlineNumberScrollpane.setOpaque(false);
		onlineNumberScrollpane.setBounds(10, 52, 230, 470);
		contentPane.add(onlineNumberScrollpane);

		onlineNumber = new JList(dlmNumber);
		onlineNumber.setBackground(SystemColor.info);
		onlineNumber.setFont(new Font("幼圆", Font.PLAIN, 20));
		onlineNumber.setOpaque(false);
		onlineNumberScrollpane.setViewportView(onlineNumber);
		
		messageScrollPane = new JScrollPane();
		messageScrollPane.getViewport().setOpaque(false);
		messageScrollPane.setOpaque(false);
		messageScrollPane.setBounds(250, 52, 500, 358);
		contentPane.add(messageScrollPane);

		onlineMessage = new JList(dlmMessage);
		onlineMessage.setBackground(SystemColor.info);
		onlineMessage.setFont(new Font("幼圆", Font.PLAIN, 20));
		onlineMessage.setOpaque(false);
		messageScrollPane.setViewportView(onlineMessage);

		inputScrollPane = new JScrollPane();
		inputScrollPane.getViewport().setOpaque(false);
		inputScrollPane.setOpaque(false);
		inputScrollPane.setBounds(250, 432, 500, 90);
		contentPane.add(inputScrollPane);

		input = new JTextArea();
		input.setFont(new Font("幼圆", Font.PLAIN, 20));
		input.setOpaque(false);
		inputScrollPane.setViewportView(input);

		send = new JButton("发送广播");
		send.setBackground(SystemColor.inactiveCaption);
		send.setForeground(Color.BLACK);
//		send.setContentAreaFilled(false);
		send.setFont(new Font("微软雅黑 Light", Font.BOLD, 20));
		send.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(startFlag){
					ms.setContain(input.getText());
					if(socketMap.size()>0){
						for (String adress : socketMap.keySet()) {
							socket=socketMap.get(adress);
							try {
								os=socket.getOutputStream();
								oos=new MyObjectOutputStream(os);
								oos.writeObject(ms);
								oos.flush();
								dlmMessage.addElement(input.getText());
								input.setText("");
							} catch (IOException e1) {
								// TODO Auto-generated catch block
								e1.printStackTrace();
							}
						}
					}else{
						JOptionPane.showMessageDialog(null, "当前没用用户连接！", "错误",JOptionPane.ERROR_MESSAGE);
					}
				}else{
					JOptionPane.showMessageDialog(null, "服务尚未开启！", "错误",JOptionPane.ERROR_MESSAGE);
				}		
			}
		});
		send.setBounds(760, 472, 164, 50);
		contentPane.add(send);

		localIP = new JLabel("本机IP：");
		localIP.setFont(new Font("幼圆", Font.PLAIN, 15));
		localIP.setBounds(760, 56, 164, 15);
		contentPane.add(localIP);
		//显示本机ip
		String ipStr = null;
		try {
			ipStr = InetAddress.getLocalHost().getHostAddress();
		} catch (UnknownHostException e1) {
			e1.printStackTrace();
		}
		ipAdress = new JLabel(ipStr);
		ipAdress.setFont(new Font("幼圆", Font.PLAIN, 15));
		ipAdress.setBounds(760, 79, 164, 22);
		contentPane.add(ipAdress);

		startServer = new JButton("启动服务");
		  
		startServer.setBackground(SystemColor.inactiveCaption);
		startServer.setForeground(Color.BLACK);
	//	startServer.setContentAreaFilled(false);
		startServer.setFont(new Font("微软雅黑 Light", Font.BOLD, 20));
		startServer.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(!startFlag){
					try {
						serverSocket = new ServerSocket(8888);
					} catch (IOException e1) {
						e1.printStackTrace();
					}
					startFlag=true;
					new Thread(new Runnable() {
						
						@Override
						public void run() {
							while(true){
								try {
									socket = serverSocket.accept();	
									Server.socketMap.put(socket.getInetAddress().toString()+ socket.getPort(),socket);
									String str=onlineuserbiz.queryOnlineUserNameByIp(socket.getInetAddress().toString().split("/")[1]);
									Server.dlmNumber.addElement(str);
									Server.dlmNumber.addElement(socket.getInetAddress().toString()+ socket.getPort());
									Server.dlmMessage.addElement("欢迎"+ socket.getInetAddress().toString()+ socket.getPort() + "连接！");
									new Thread(new ServerRead(socket)).start();
								} catch (IOException e) {
									e.printStackTrace();
								}
							}
						}
					}).start();
					
					isStart.setText("服务器运行中……");
				}else{
					JOptionPane.showMessageDialog(null, "服务已经开启！", "错误",JOptionPane.ERROR_MESSAGE);
				}
			}
		});
		startServer.setBounds(760, 114, 164, 39);
		contentPane.add(startServer);

		stopServer = new JButton("关闭服务");
		stopServer.setBackground(SystemColor.inactiveCaption);
		stopServer.setForeground(Color.BLACK);
//		stopServer.setContentAreaFilled(false);
		stopServer.setFont(new Font("微软雅黑 Light", Font.BOLD, 20));
		stopServer.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if(startFlag==true){
					try {
						oos.close();
						os.close();
						socket.close();
						serverSocket.close();
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					startFlag=false;
					isStart.setText("服务器已关闭");
				}else{
					JOptionPane.showMessageDialog(null, "服务尚未开启！", "错误",JOptionPane.ERROR_MESSAGE);
				}

			}
		});
		stopServer.setBounds(760, 166, 164, 39);
		contentPane.add(stopServer);
		
		JSeparator separator = new JSeparator();
		separator.setBounds(760, 83, 164, 2);
		contentPane.add(separator);
		
		onlineNumb = new JLabel("当前在线人数：");
		onlineNumb.setFont(new Font("幼圆", Font.PLAIN, 15));
		onlineNumb.setBounds(10, 15, 96, 24);
		contentPane.add(onlineNumb);
		
		message = new JLabel("当前聊天室消息：");
		message.setFont(new Font("幼圆", Font.PLAIN, 15));
		message.setBounds(250, 15, 107, 24);
		contentPane.add(message);
		
		state = new JLabel("当前状态：");
		state.setFont(new Font("幼圆", Font.PLAIN, 15));
		state.setBounds(760, 218, 76, 15);
		contentPane.add(state);
		
		isStart = new JLabel("服务器未运行");
		isStart.setFont(new Font("幼圆", Font.PLAIN, 15));
		isStart.setBounds(760, 246, 164, 22);
		contentPane.add(isStart);
		
		number = new JLabel("0");
		//开启线程刷新在线人数
		new Thread(new Runnable() {
			@Override
			public void run() {
				while(true){
					number.setText(""+dlmNumber.size());
					try {
						Thread.sleep(1000);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}).start();
		number.setBounds(98, 15, 54, 24);
		contentPane.add(number);
		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setFont(new Font("幼圆", Font.PLAIN, 15));
		 lblNewLabel.setIcon(new ImageIcon("image/32.jpg"));
		lblNewLabel.setBounds(0, 0, 932, 567);
		contentPane.add(lblNewLabel);
	}
	
}
