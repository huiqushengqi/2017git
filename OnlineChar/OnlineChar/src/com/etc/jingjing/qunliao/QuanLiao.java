package com.etc.jingjing.qunliao;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JList;
import javax.swing.JTextField;
import javax.swing.JButton;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.swing.JLabel;

import com.etc.jingjing.server.Server;
import com.etc.jingjing.util.MyObjectInputStream;
import com.etc.jingjing.util.MyObjectOutputStream;

import java.awt.Font;
import java.awt.SystemColor;

public class QuanLiao extends JFrame {

	MyObjectInputStream ois = null;
	MyObjectOutputStream oos = null;
	Socket socket = null;
    private	JButton btnip; 
	private JPanel contentPane;
	private JTextField textField;
    private JList list1,list2; 
	private DefaultListModel dlm1 = new DefaultListModel();
	private DefaultListModel dlm2 = new DefaultListModel();
	private JLabel lblNewLabel;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					QuanLiao frame = new QuanLiao();
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
	public QuanLiao() {
		this.setTitle("群聊");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 696, 496);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.getViewport().setOpaque(false);
		scrollPane.setOpaque(false);
		scrollPane.setBounds(14, 34, 411, 280);
		contentPane.add(scrollPane);
		
		list1 = new JList();
		list1.setBackground(SystemColor.info);
		list1.setOpaque(false);
		list1.setModel(dlm1);
		scrollPane.setViewportView(list1);
		
		JScrollPane scrollPane_1 = new JScrollPane();
		scrollPane_1.getViewport().setOpaque(false);
		scrollPane_1.setOpaque(false);
		scrollPane_1.setBounds(14, 332, 322, 60);
		contentPane.add(scrollPane_1);
		
		JScrollPane scrollPane_2 = new JScrollPane();
		scrollPane_2.getViewport().setOpaque(false);
		scrollPane_2.setOpaque(false);
		scrollPane_2.setBounds(470, 34, 194, 280);
		contentPane.add(scrollPane_2);
		list2 = new JList();
		list2.setBackground(SystemColor.info);
		list2.setOpaque(false);
		list2.setModel(dlm2);
		scrollPane_2.setViewportView(list2);
		
		textField = new JTextField();
		textField.setFont(new Font("幼圆", Font.PLAIN, 20));
		textField.setOpaque(false);
		scrollPane_1.setViewportView(textField);
		textField.setColumns(10);
		
		try {
			socket = new Socket("192.168.4.204",8888);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			JOptionPane.showMessageDialog(null, "服务器未响应", "提示", JOptionPane.ERROR_MESSAGE);
			
		}
		new Thread(new Runnable() {
			@Override
			public void run() {
				
				try {
				while(true){
					try {
						ois = new MyObjectInputStream(socket.getInputStream());
					} catch (IOException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
					Object  obj = null;
					
					if((obj=ois.readObject())!=null){
						if(obj instanceof String){
							String str = (String) obj;
							
							if(!str.contains("@chat")){dlm1.addElement(str);}
							
						}else if(obj instanceof List){
							dlm2.removeAllElements();
							List<String> list = (List<String>) obj;
							for (String string : list) {
								dlm2.addElement(string);
							}
							
						}
			
					}
				
				}
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}
		}).start();
        
		JButton btnNewButton = new JButton("发送");
		btnNewButton.setFont(new Font("微软雅黑 Light", Font.PLAIN, 15));
		btnNewButton.setBackground(SystemColor.activeCaption);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				DateFormat sf = new SimpleDateFormat("HH:MM:SS");
				String time = sf.format(new Date());
				String text = time+"   "+textField.getText();
			
				textField.setText("");
				
				
					//写的线程
					Thread th = new Thread(new QLClient_Write(text,socket));
					th.start();
				
			 
			}
		});
		btnNewButton.setBounds(350, 356, 75, 36);
		contentPane.add(btnNewButton);
		
		
		
		
		
		JLabel lblip = new JLabel("\u5728\u7EBFIP");
		lblip.setFont(new Font("幼圆", Font.PLAIN, 15));
		lblip.setBounds(469, 13, 54, 15);
		contentPane.add(lblip);
		
		btnip = new JButton("\u70B9\u51FB\u83B7\u53D6IP");
		btnip.setFont(new Font("微软雅黑 Light", Font.PLAIN, 15));
		btnip.setBackground(SystemColor.activeCaption);
		btnip.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				//得到服务端的Map值，然后再遍历里面的ketset集合获得在线IP
				
			
			}
		});
		btnip.setBounds(555, 356, 109, 36);
		contentPane.add(btnip);
		
		lblNewLabel = new JLabel("");
		lblNewLabel.setIcon(new ImageIcon("image/301.png"));
		lblNewLabel.setBounds(0, 0, 678, 443);
		contentPane.add(lblNewLabel);
	}
}
