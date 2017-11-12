package com.etc.jingjing.client;

import java.awt.EventQueue;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;

import com.etc.jingjing.entity.Message;
import com.etc.jingjing.entity.OnlineUser;
import com.etc.jingjing.qunliao.QuanLiao;
import com.etc.jingjing.thread.ClientShowOnLineRead;
import com.etc.jingjing.thread.ClientMainRead;
import com.etc.jingjing.util.MyObjectInputStream;
import com.etc.jingjing.util.MyObjectOutputStream;

import javax.swing.JLabel;

import java.awt.Font;
import java.awt.SystemColor;

public class ClientMain extends JFrame implements ActionListener{

	private JPanel contentPane;
	private Socket socket;
	private JButton show_online_user,chat_room,music;
	public static Map<String, JFrame> chatwitchone;
	//���������������û���˽�Ŀ��������
//	public static List<OnLineUser> onLineUserList=new ArrayList();

	/**
	 * Create the frame.
	 */
	public ClientMain(Socket socket) {
		this.socket=socket;
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 620, 465);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		show_online_user = new JButton("��ʾ�����û�");
		show_online_user.setBackground(SystemColor.text);
	//	show_online_user.setContentAreaFilled(false);
		show_online_user.setFont(new Font("΢���ź� Light", Font.PLAIN, 15));
		show_online_user.setBounds(14, 48, 176, 38);
		show_online_user.addActionListener(this);
		contentPane.add(show_online_user);
		
		chat_room = new JButton("����������");
		chat_room.setBackground(SystemColor.activeCaption);
	//	chat_room.setContentAreaFilled(false);
		chat_room.setFont(new Font("΢���ź� Light", Font.PLAIN, 15));
		chat_room.setBounds(204, 48, 176, 38);
		contentPane.add(chat_room);
		
		music = new JButton("С��Ϸ");
	
		music.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent arg0) {
				GUI1 g=new GUI1();
				g.setVisible(true);
			}
		});
		music.setBackground(SystemColor.menu);
	//	music.setContentAreaFilled(false);
		music.setFont(new Font("΢���ź� Light", Font.PLAIN, 15));
		music.setBounds(394, 48, 176, 38);
		contentPane.add(music);
		
		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setIcon(new ImageIcon("image/34.jpg"));
		lblNewLabel.setBounds(0, 0, 620, 465);
		contentPane.add(lblNewLabel);
		
		Thread clientMainRead=new Thread(new ClientMainRead(socket));
		clientMainRead.start();
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==show_online_user){
			ClientShowOnLine c=new ClientShowOnLine(socket);
			c.setVisible(true);
		}else if(e.getSource()==chat_room){
		
		}
	}
}
