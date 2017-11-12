package com.etc.jingjing.qunliao;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.awt.Graphics;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.image.ImageObserver;
import java.awt.image.ImageProducer;
import java.io.IOException;
import java.io.InputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.DefaultListModel;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JList;
import javax.swing.JButton;
import java.awt.Toolkit;

public class QL_Server extends JFrame {

	
	public static Map<String, Socket> map = new HashMap<String,Socket>();
	private JPanel contentPane;
	private boolean isstart=false;
	private JButton close,start;
	private ServerSocket ssocket;  //服务端socket
	private Socket sk;
	private DefaultListModel dlm=new DefaultListModel();
    private Socket socket;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					QL_Server frame = new QL_Server();
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
	public QL_Server() {
		setIconImage(Toolkit.getDefaultToolkit().getImage("C:\\Users\\Royol\\Pictures\\flower.jpg"));
		this.setTitle("群聊客户端");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 677, 447);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(39, 34, 385, 339);
		contentPane.add(scrollPane);
		
		JList list = new JList();
		scrollPane.setViewportView(list);
		
		start = new JButton("\u542F\u52A8\u670D\u52A1\u7AEF");
		start.setBounds(457, 32, 132, 33);
		start.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
			
				if(!isstart){
					
					new Thread(new Runnable() {
						
						@Override
						public void run() {
							try {
								ssocket = new ServerSocket(8888);
								isstart = true;
								while(true){
									sk = ssocket.accept();
									System.out.println("已有客户端连入");
									System.out.println(sk.getInetAddress().toString()+sk.getPort());
									map.put(sk.getInetAddress().toString()+sk.getPort(), sk);
									
									//广播的写线程
									Thread th2 = new Thread(new BoradCast_Write(sk.getInetAddress().toString()+sk.getPort()));
									th2.start();
									
									//显示在线用户的IP值
									
									Thread th3 = new Thread(new ShowOnline());
									th3.start();
									
									
									Thread th = new Thread(new Read_Server(map));
									th.start();
								}
							
							} catch (IOException e) {
								// TODO Auto-generated catch block
								e.printStackTrace();
							}
							
						}
					}).start();
				
				}else{
					JOptionPane.showMessageDialog(null, "已经开启，无需再次开启", "提示", JOptionPane.ERROR_MESSAGE);
				
				}
				
			}
		});
		
		
		contentPane.add(start);
		
		close = new JButton("\u5173\u95ED\u670D\u52A1\u7AEF");
		close.setBounds(455, 95, 134, 38);
		contentPane.add(close);
		close.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				if(isstart){
					//启动，现在关闭
					if(socket!=null){
						try {
							socket.close();
						} catch (Exception e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}
						
					}

					if(ssocket!=null){
						try {
							ssocket.close();  //关闭服务器
							
						} catch (IOException e1) {
							// TODO Auto-generated catch block
							e1.printStackTrace();
						}finally{
							isstart=false;
						}
					}
					
					
				}else{
					//已经关闭了，不需要再关闭
					JOptionPane.showMessageDialog(null, "服务器尚未启动，无需关闭");
					
				}
				
				
			}
		});
		
		
		
	}


	
}
